<template>
    <div>
        <div class="crumbs">
            <el-breadcrumb separator="/">
                <el-breadcrumb-item>
                    <i class="el-icon-lx-cascades"></i> 基础表格
                </el-breadcrumb-item>
            </el-breadcrumb>
        </div>
        <div class="container">
            <div class="handle-box">
                <el-button
                    type="primary"
                    icon="el-icon-delete"
                    class="handle-del mr10"
                    @click="delAllSelection"
                >批量删除</el-button>
                <el-select v-model="query.typesearch" placeholder="用户名" class="handle-select mr10">
                    <el-option key="1" label="用户名" value="1"></el-option>
                    <el-option key="2" label="地址" value="2"></el-option>
                </el-select>
                <el-input v-model="query.name" placeholder="搜索内容" class="handle-input mr10" clearable></el-input>
                <el-button type="primary" icon="el-icon-search" @click="handleSearch">搜索</el-button>
            </div>
            <el-table
                :data="tableData"
                border
                class="table"
                ref="multipleTable"
                header-cell-class-name="table-header"
                @selection-change="handleSelectionChange"
            >
                <el-table-column type="selection" width="55" align="center"></el-table-column>
                <el-table-column prop="id" label="ID" width="55" align="center"></el-table-column>
                <el-table-column prop="name" label="用户名"></el-table-column>
                <el-table-column label="账户余额">
                    <template slot-scope="scope">￥{{scope.row.money}}</template>
                </el-table-column>
                <el-table-column label="头像(查看大图)" align="center">
                    <template slot-scope="scope">
                        <el-image
                            class="table-td-thumb"
                            :src="scope.row.thumb"
                            :preview-src-list="[scope.row.thumb]"
                        ></el-image>
                    </template>
                </el-table-column>
                <el-table-column prop="address" label="地址"></el-table-column>
                <el-table-column label="状态" align="center">
                    <template slot-scope="scope">
                        <el-tag
                            :type="scope.row.state==='成功'?'success':(scope.row.state==='失败'?'danger':'')"
                        >{{scope.row.state}}</el-tag>
                    </template>
                </el-table-column>

                <el-table-column prop="date" label="注册时间"></el-table-column>
                <el-table-column label="操作" width="180" align="center">
                    <template slot-scope="scope">
                        <el-button
                            type="text"
                            icon="el-icon-edit"
                            @click="handleEdit(scope.$index, scope.row)"
                        >编辑</el-button>
                        <el-button
                            type="text"
                            icon="el-icon-delete"
                            class="red"
                            @click="handleDelete(scope.$index, scope.row)"
                        >删除</el-button>
                    </template>
                </el-table-column>
            </el-table>
            <div class="pagination">
                <el-pagination
                    small
                    layout="total, prev, pager, next"
                    :current-page="query.page"
                    :page-size="query.pagesize"
                    :total="total"
                    @current-change="handlePageChange"
                ></el-pagination>
            </div>
        </div>

        <!-- 编辑弹出框 -->
        <el-dialog title="编辑" :visible.sync="editVisible" width="30%">
            <el-form ref="form88" :model="form88" label-width="70px">
                <el-form-item label="用户名">
                    <el-input v-model="form88.name"></el-input>
                </el-form-item>
                <el-form-item label="地址">
                    <el-input v-model="form88.address"></el-input>
                </el-form-item>
            </el-form>
            <span slot="footer" class="dialog-footer">
                <el-button @click="editVisible = false">取 消</el-button>
                <el-button type="primary" @click="saveEdit">确 定</el-button>
            </span>
        </el-dialog>
    </div>
</template>

<script>
import api from '../../utils/api.js'
export default {
    name: 'basetable',
    data() {
        return {
            query: {
                typesearch: '',
                name: '',
                page: 1,
                pagesize: 10
            },
            tableData: [],
            multipleSelection: [],
            delList: [],
            editVisible: false,
            pageTotal: 0,
            total:0,
            form: {},
            idx: -1,
            id: -1,
            form88:{}
        };
    },
    created() {
        this.getData('test/testList',1,10,this.query);
    },
    methods: {
        // 获取 easy-mock 的模拟数据
        getData(url,page,pagesize,params) {
            api.testData(url,{
            page: page,
            pagesize: pagesize,
            params:params
            }, (res) => {
            if (res.status === 200) {
                const data = res.data
                if (data.code === 0) {
                this.tableData = data.data.list;
                this.total = data.data.total;
                } else {
                this.$message(data.message)
                }
            } else {
                this.$message('请求超时')
            }
            })    
        },
        // 触发搜索按钮
        handleSearch() {
           // alert(this.query.typesearch)
            this.$set(this.query, 'page', 1);
            this.getData('test/testList',1,10,this.query);
        },
        // 删除操作
        handleDelete(index, row) {
            // 二次确认删除
            this.$confirm('确定要删除吗？', '提示', {
                type: 'warning'
            })
                .then(() => {
                    this.$message.success('删除成功');
                    this.tableData.splice(index, 1);
                })
                .catch(() => {});
        },
        // 多选操作
        handleSelectionChange(val) {
            this.multipleSelection = val;
        },
        delAllSelection() {
            const length = this.multipleSelection.length;
            let str = '';
            this.delList = this.delList.concat(this.multipleSelection);
            for (let i = 0; i < length; i++) {
                str += this.multipleSelection[i].name + ' ';
            }
            this.$message.error(`删除了${str}`);
            this.multipleSelection = [];
        },
        // 编辑操作
        handleEdit(index, row) {
            this.idx = index;
            this.form88 = row;
            this.editVisible = true;
        },
        // 保存编辑
        saveEdit() {
            // console.log(this.$refs['form88'].model)
            // console.log(this.$refs['form88'].model.address)
            // return true
            let name = this.$refs['form88'].model.name;
            let address = this.$refs['form88'].model.address;
            let id = this.$refs['form88'].model.id;
            api.updateData('test/testUpdate',{name:name,address:address,id:id},(res) => {
                if (res.status === 200) {
                    const data = res.data
                    if (data.code === 0) {
                        this.$message.success(data.message)
                    } else {
                        this.$message.error(data.message)
                    }
                } else {
                    this.$message('请求超时,请稍后再试')
                } 
            })
            this.editVisible = false;
  //          this.$message.success(`修改第 ${this.idx + 1} 行成功`);
            this.$set(this.tableData, this.idx, this.form88);
        },
        // 分页导航 val 页码
        handlePageChange(val) {
            this.$set(this.query, 'page', val);
            this.getData('test/testList',val,10,this.query);
        }
    }
};
</script>

<style scoped>
.handle-box {
    margin-bottom: 20px;
}

.handle-select {
    width: 120px;
}

.handle-input {
    width: 300px;
    display: inline-block;
}
.table {
    width: 100%;
    font-size: 14px;
}
.red {
    color: #ff0000;
}
.mr10 {
    margin-right: 10px;
}
.table-td-thumb {
    display: block;
    margin: auto;
    width: 40px;
    height: 40px;
}
</style>
