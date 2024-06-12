import request from '@/utils/request'

// 查询评论列表
export function listReply(query) {
  return request({
    url: '/system/reply/list',
    method: 'get',
    params: query
  })
}

// 查询评论详细
export function getReply(id) {
  return request({
    url: '/system/reply/' + id,
    method: 'get'
  })
}

// 查询评论详细活动ID
export function getReplyActivity(id) {
  return request({
    url: '/system/reply/activity/' + id,
    method: 'get'
  })
}

// 新增评论
export function addReply(data) {
  return request({
    url: '/system/reply',
    method: 'post',
    data: data
  })
}

// 新增子评论
export function addSonReply(data) {
  return request({
    url: '/system/reply/son',
    method: 'post',
    data: data
  })
}

// 修改评论
export function updateReply(data) {
  return request({
    url: '/system/reply',
    method: 'put',
    data: data
  })
}

// 删除评论
export function delReply(id) {
  return request({
    url: '/system/reply/' + id,
    method: 'delete'
  })
}
