import request from '@/utils/request'


// 查询文件存储列表
export function listFiles(query) {
  return request({
    url: '/system/files/list',
    method: 'get',
    params: query
  })
}

// 查询文件存储详细
export function getFiles(fileId) {
  return request({
    url: '/system/files/' + fileId,
    method: 'get'
  })
}

// 新增文件存储
export function addFiles(data) {
  return request({
    url: '/system/files',
    method: 'post',
    data: data
  })
}

// 修改文件存储
export function updateFiles(data) {
  return request({
    url: '/system/files',
    method: 'put',
    data: data
  })
}

// 删除文件存储
export function delFiles(fileId) {
  return request({
    url: '/system/files/' + fileId,
    method: 'delete'
  })
}

// 通过活动ID查询文件存储详细
export function getFilesByActivityId(activityId) {
  return request({
    url: '/system/files/activity/' + activityId,
    method: 'get'
  })
}
