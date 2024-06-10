import request from '@/utils/request'

// 查询评论列表
export function listDiscuss(query) {
  return request({
    url: '/system/discuss/list',
    method: 'get',
    params: query
  })
}

// 查询评论详细
export function getDiscuss(id) {
  return request({
    url: '/system/discuss/' + id,
    method: 'get'
  })
}

// 新增评论
export function addDiscuss(data) {
  return request({
    url: '/system/discuss',
    method: 'post',
    data: data
  })
}

// 修改评论
export function updateDiscuss(data) {
  return request({
    url: '/system/discuss',
    method: 'put',
    data: data
  })
}

// 删除评论
export function delDiscuss(id) {
  return request({
    url: '/system/discuss/' + id,
    method: 'delete'
  })
}
