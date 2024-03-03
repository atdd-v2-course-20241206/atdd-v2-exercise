# language: zh-CN
@ui-login
功能: 订单

  场景: 录入订单
    当用如下数据录入订单:
      | 订单号   | 商品名称 | 金额 | 收件人 | 电话          | 地址     | 状态  |
      | SN001 | 衬衫   | 19 | 张三  | 13085901735 | 上海市长宁区 | 待发货 |
    那么显示如下订单
      | SN001 | 衬衫 | ￥19 | 待发货 |

  场景: 用DAL做 Html Table 断言
    假如存在"订单":
      | code  | productName | total | status        |
      | SN001 | iPhone      | 19999 | toBeDelivered |
    那么订单列表页显示如下:
    """
    html.table: | code  | product | total   | status |
                | SN001 | iPhone  | ￥19999 | 待发货 |
    """
