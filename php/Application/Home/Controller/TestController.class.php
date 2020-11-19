<?php
/**
 * Date: 2020/11/7
 */

namespace Home\Controller;

class TestController extends BaseController
{
	public function testUploadImage(){
		$rootImage = 'Public/images/';
		$allowedExts = array("gif", "jpeg", "jpg", "png");
		$lastFileName = date('Y-m-dHis',time()) . '-'.rand(1000,9999);
		foreach($_FILES as $inputFileName => $fileField){
			$temp = explode(".", $_FILES[$inputFileName]["name"]);
			$extension = end($temp);
			if(!in_array($extension, $allowedExts)){
				echo '只能上传图片';
				exit;
			}
			if(is_uploaded_file($_FILES[$inputFileName]['tmp_name'])){
				if($_FILES[$inputFileName]['error'] == 0){

					if ($_FILES[$inputFileName]["type"] == "image/gif"){
						$lastFileName .= '.gif';	
					}elseif($_FILES[$inputFileName]["type"] == "image/jpeg"){
						$lastFileName .= '.jpeg';	
					}elseif($_FILES[$inputFileName]["type"] == "image/jpg"){
						$lastFileName .= '.jpg';
					}elseif($_FILES[$inputFileName]["type"] == "image/pjpeg"){
						$lastFileName .= '.pjpeg';
					}elseif($_FILES[$inputFileName]["type"] == "image/x-png"){
						$lastFileName .= '.png';
					}elseif($_FILES[$inputFileName]["type"] == "image/png"){
						$lastFileName .= '.png';
					}

					$imageName = $rootImage . $lastFileName;

					if(move_uploaded_file($_FILES[$inputFileName]['tmp_name'], $imageName)){
						//echo 'http://vuephp.com/' . $imageName;
						// echo '成功上传';
						$returnUrl = 'http://vuephp.com/' . $imageName;
						$returnData = array('errno' => 0,
											'data'=>array($returnUrl));
						echo json_encode($returnData);
					}else{
						echo '上传失败，不能转移文件到相应的文件';
					}
				}else if($_FILES[$inputFileName]['error'] == 1){
					echo '上传文件超过php.ini中的最大大小';
				}else if($_FILES[$inputFileName]['error'] == 2){
					echo '上传文件大小超过 html表单中的大小';
				}else if($_FILES[$inputFileName]['error'] == 3){
					echo '文件只有部分上传';
				}else if($_FILES[$inputFileName]['error'] == 4){
					echo '没有文件被上传';
				}else if($_FILES[$inputFileName]['error'] == 6){
					echo '找不到临时文件夹';
				}else{
					echo '文件写入失败!';
				}
			}
		}
	}
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