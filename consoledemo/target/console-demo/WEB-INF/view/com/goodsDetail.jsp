<%--
  Created by IntelliJ IDEA.
  User: SUNPENG
  Date: 2018/7/31
  Time: 23:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>商品详情</title>
    <style type="text/css">
        .tdStyle{
            width:100px;
            font-size:20px;
            padding: 5px 5px 5px 5px;
        }
        .payBtFloatLeft{
            margin-left:400px;
        }

        .payBtStyle{
            font-size:20px;
            width:150px;
        }

        .goodsInfo{
            margin-right:800px;
        }

        .rushToBuyBt{
            font-size:20px;
            width:150px;
            color: red;
        }
    </style>
</head>
<body>
<jsp:include page="commonHeaderBanner.jsp"/>
<div align="center" class="goodsInfo">
    <H1>商品详情</H1>
</div>
<div align="center">
    <form id="payForm" action="payPage" method="post">
        <table align="center">
            <tr>
                <td>
                    <img src="${goods.goodsPicturePath}"  width="400" height="400">
                </td>
                <td>
                    <table >
                            <tr>
                                <td class="tdStyle">
                                    商品ID
                                </td>
                                <td>
                                    ${goods.goodsId}
                                </td>
                            </tr>
                            <tr>
                                <td class="tdStyle">
                                    名称
                                </td>
                                <td>
                                    ${goods.goodsName}
                                </td>
                            </tr>
                            <tr>
                                <td class="tdStyle">
                                    价格(￥)
                                </td>
                                <td>
                                    ${goods.goodsPrice}
                                </td>
                            </tr>
                            <tr>
                                <td class="tdStyle">
                                    简介
                                </td>
                                <td>
                                    ${goods.goodsDescribe}
                                </td>
                            </tr>
                            <tr>
                                <td class="tdStyle">
                                    库存数量
                                </td>
                                <td>
                                    ${goods.goodsCount}
                                </td>
                            </tr>
                        </table>
                </td>
            </tr>
        </table>
        <input name="goodsId" value="${goods.goodsId}" type="hidden">
        <div align="center" class="payBtFloatLeft">
            <input id="payBt" type="submit" value="购买" class="payBtStyle">
            <input id="rushToBuyBt" type="submit" value="抢购" class="rushToBuyBt" onclick="rushToBuy()" style="display:none">
        </div>
    </form>
</div>

<script type="text/javascript">
    var goodsType = "${goods.goodsType}".toString();
    if(goodsType == "RushToBuy"){
        $('#payBt').hide();
        $('#rushToBuyBt').show();
    }

    function rushToBuy() {
        $("#payForm").attr('action','rushToBuy');
        $("#payForm").attr('method','post')
    }
</script>
</body>
</html>
