import request from "@/api/index.js";
// 新增用户
// 查询用户列表
export function listUser(data) {
    return request({
        url: '/hqhTeacher',
        method: 'get',
        params: data
    })
}
// 新增用户
export function addUser(data) {
    return request({
        url: '/hqhTeacher',
        method: 'post',
        data: data
    })
}
//
export function getByUserId(id) {
    return request({
        url: '/hqhTeacher/' + id,
        method: 'get'
    })
}
// 修改用户
export function updateUser(data) {
    return request({
        url: '/hqhTeacher/',
        method: 'put',
        data: data
    })
}

// 删除用户
export function deleteUser(userId) {
    return request({
        url: '/hqhTeacher/' + userId,
        method: 'delete'
    })
}