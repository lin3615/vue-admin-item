<?php
/**
 * Date: 2020/11/7
 */

namespace Home\Controller;

class TestController extends BaseController
{
	public function testPostTbaseForm(){
		// 通过 I('date1'), I('type') 接收值
		$this->jsonReturn(0, '查询成功', $_REQUEST);
	}


	public function testGetTbaseform(){
		$list = array();
		$list[0]['value'] = 'guangdong';
		$list[0]['label'] = '广东省';

		$list[0]['children'][0]['value'] = 'guangzhou';
		$list[0]['children'][0]['label'] = '广州市';

		$list[0]['children'][0]['children'][0]['value'] = 'tianhe';
		$list[0]['children'][0]['children'][0]['label'] = '天河区';
		$list[0]['children'][0]['children'][1]['value'] = 'haizhu';
		$list[0]['children'][0]['children'][1]['label'] = '海珠区';

		$list[0]['children'][1]['value'] = 'dongguan';
		$list[0]['children'][1]['label'] = '东莞市';

		$list[0]['children'][1]['children'][0]['value'] = 'changan';
		$list[0]['children'][1]['children'][0]['label'] = '长安镇';
		$list[0]['children'][1]['children'][1]['value'] = 'humen';
		$list[0]['children'][1]['children'][1]['label'] = '虎门镇';

		$list[1]['value'] = 'guangxi';
		$list[1]['label'] = '广西壮族自治区';

		$list[1]['children'][0]['value'] = 'nanning';
		$list[1]['children'][0]['label'] = '南宁市';

		$list[1]['children'][0]['children'][0]['value'] = 'qingxiu';
		$list[1]['children'][0]['children'][0]['label'] = '青秀区';
		$list[1]['children'][0]['children'][1]['value'] = 'xitang';
		$list[1]['children'][0]['children'][1]['label'] = '西塘区';

		$list[1]['children'][1]['value'] = 'guilin';
		$list[1]['children'][1]['label'] = '桂林市';

		$list[1]['children'][1]['children'][0]['value'] = 'qixing';
		$list[1]['children'][1]['children'][0]['label'] = '七星区';
		$list[1]['children'][1]['children'][1]['value'] = 'xiufeng';
		$list[1]['children'][1]['children'][1]['label'] = '秀峰区';
		$data = array('list' => $list);
		$data['name']= 'testForm';
		$data['region']= '小天才';
		$data['date1']= date('Y-m-d');
		$this->jsonReturn(0, '查询成功', $data);
	}

	public function testDeleteMulti(){
		//	$this->validToken();
		$ids = I('ids');
		if(!$ids){
			$this->jsonReturn(-1, '没有选择要删除的数据', null);
		}
		$idArr = explode(',',$ids);
		$length = count($idArr) - 1;
		unset($idArr[$length]);
		$sql = "delete from test where id in (" . implode(',',$idArr) . ")";

		$res=M()->execute($sql);
		if($res !== false){
			$this->jsonReturn(0, '删除成功', null);
		}else{
			$this->jsonReturn(-1, '删除失败，请稍后再试', null);
		}
	}
	public function testDelete(){
		//	$this->validToken();
		$id = I('id');
		if(!$id || intval($id) < 1){
			$this->jsonReturn(-1, '非法操作', null);
		}
		$sql = "delete from test where id = {$id}";
		$res=M()->execute($sql);
		if($res !== false){
			$this->jsonReturn(0, '删除成功', null);
		}else{
			$this->jsonReturn(-1, '删除失败，请稍后再试', null);
		}
	
	}

	public function testUpdate(){
		//	$this->validToken();
		
		$name = I('name');
		$address = I('address');
		$id = I('id');
		

		/*
		$name = 'name';
		$address = 'address';
		$id = 1;
		*/
		$sql = "update test set name = '{$name}',address = '{$address}' where id = {$id}";
		$res=M()->execute($sql);
		if($res !== false){
			$this->jsonReturn(0, '修改成功', null);
		}else{
			$this->jsonReturn(-1, '修改失败，请稍后再试', null);
		}



	}
	public function testList(){
	//	$this->validToken();
		$page = I('page') > 0 ? (I('page') - 1) : 0;	
        $from = $page * I('pagesize');
		$typesearch = I('typesearch');
		$name = I('name');
		$where = array();
		if(in_array($typesearch,array(1,2)) && $name){
			if($typesearch == 1){
				$where['name'] = $name;
			}else{
				$where['address'] = $name;
			}
		}
		if($where){
			$arr = M('test')->where($where)->order('id asc')->limit($from, I('pagesize'))->select();
			$count = M('test')->where($where)->count();
		}else{
			$arr = M('test')->order('id asc')->limit($from, I('pagesize'))->select();
			$count = M('test')->count();
		}
		
		
        $data['list'] = $arr;
		$data['total'] = intval($count);
		$data['typesearch'] = $typesearch;
		$data['name'] = $name;

       

  

        $this->jsonReturn(0, '查询成功', $data);

	}
    public function submit() {
        $this->validToken();

        if ($this->is_empty(I('content'))) {
            $this->jsonReturn(-1, '留言内容不能为空', null);
        }

        $user = M('user')->where(['token' => I('token')])->find();

        $data['content'] = I('content');
        $data['user_id'] = $user['id'];
        $data['username'] = $user['username'];
        $data['create_at'] = time();

        $result = M('feedback')->add($data);

        if (!$result) {
            $this->jsonReturn(-1, '未知错误', null);
        } else {
            $this->jsonReturn(0, '留言成功', null);
        }
    }

    public function records() {
        $this->validToken();

        if (is_null(I('page')) ||
            is_null(I('size'))) {
            $this->jsonReturn(-1, '参数错误', null);
        }

        $from = I('page') * I('size');

        $result = M('feedback')->order('create_at desc')->limit($from, I('size'))->select();

        $arr = [];

        foreach ($result as $item) {
            $name = substr($item['username'], 0, strlen($item['username']) - 2) . '**';
            array_push($arr, ['create_at' => date("Y-m-d H:i:s", $item['create_at']),
            'username' => $name,
            'content' => $item['content']]);
        }

        $count = M('feedback')->count();

        $data['list'] = $arr;
        $data['pages'] = ceil($count / I('size'));

        $this->jsonReturn(0, '查询成功', $data);
    }
}