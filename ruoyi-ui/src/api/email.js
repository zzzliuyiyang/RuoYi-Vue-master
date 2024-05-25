import request from '@/utils/customer-request'

// 发送简单邮件
export function sendSimpleEmail(query) {
  return request({
    url: '/email/sendSimpleEmail',
    method: 'post',
    data: queryv
  })
}

// 发送简单邮件
export function sendHtmlEmail(query) {
  return request({
    url: '/email/sendHtmlEmail',
    method: 'post',
    data: query
  })
}
