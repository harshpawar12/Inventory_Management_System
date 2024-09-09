

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
            <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
   <head>
   </head>
    <link rel="stylesheet" href="/css/invoice.css">
 <%@ include file="userHeader.jsp" %>
   
    <body>
        <div class = "invoice-wrapper" id = "print-area">
            <div class = "invoice">
                <div class = "invoice-container">
                    <div class = "invoice-head">
                        <div class = "invoice-head-top">
                            <div class = "invoice-head-top-left text-start">
                                <img src = "https://www.pngitem.com/pimgs/m/264-2640106_inventory-management-system-logo-hd-png-download.png">
                            </div>
                            <div class = "invoice-head-top-right text-end">
                                <h3>Invoice</h3>
                            </div>
                        </div>
                        <div class = "hr"></div>
                        <div class = "invoice-head-middle">
                            <div class = "invoice-head-middle-left text-start">
                                <p><span class = "text-bold">Date</span>:</p>
                            </div>
                            <div class = "invoice-head-middle-right text-end">
                                <p><spanf class = "text-bold">Invoice No:</span>16789</p>
                            </div>
                        </div>
                        <div class = "hr"></div>
                        <div class = "invoice-head-bottom">
                            <div class = "invoice-head-bottom-left">
                                <ul>
                                    <li class = 'text-bold'>Invoiced To:</li>
                                    <li>UserName:${user.username} </li>
                                    <li>Email:${user.email} </li>
                                    <li>Number:${user.phone} </li>
                                    <li>Address:karad</li>                    
                                </ul>
                            </div>
                            <div class = "invoice-head-bottom-right">
                                <ul class = "text-end">
                                    <li class = 'text-bold'>Pay To:</li>
                                    <li>Harsh pawar</li>
                                    <li>Resorts Enterprise</li>
                                    <li>Orange, CA 89438</li>
                                    <li>hpawar@hmail.com</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class = "overflow-view">
                        <div class = "invoice-body">
                        
                            <table>
                                <thead>
                                    <tr>
                                        <td class = "text-bold">produt_Name</td>
                                        <td class = "text-bold">category</td>
                                         <td class = "text-bold">sellingprice</td>
                                       <td class = "text-bold">Quantity</td>
                          
                                        <td class = "text-bold">Amount</td>
                                    </tr>
                                </thead>
                                <tbody>
                                 <tbody>
         
        </tbody>
        <c:forEach var="item" items="${card}">
                                    <tr>
                                        <td> <li>${item.product_name}</li></td>
                                          <td><li>${item.category}</li></td>
                                        <td> <li>${item.sellingprice}</li></td>
                                         <td> <li> ${item.qnt}</li></td>
                                 <td> <li> ${item.totalamt}</li></td>
                         
                                       
                                       
                                    </tr>
                                    </c:forEach>
                                    <!-- <tr>
                                        <td colspan="4">10</td>
                                        <td>$500.00</td>
                                    </tr> -->
                                </tbody>
                            </table>
                            <div class = "invoice-body-bottom">

                                <div class = "invoice-body-info-item">
                                    <div class = "info-item-td text-end text-bold">Total:${totalAmount}</div>
                                    
                                    <div class = "info-item-td text-end"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class = "invoice-foot text-center">
                        <p><span class = "text-bold text-center">NOTE:&nbsp;</span>This is computer generated receipt and does not require physical signature.</p>

                        <div class = "invoice-btns">
                            <button type = "button" class = "invoice-btn" onclick="printInvoice()">
                                <span>
                                    <i class="fa-solid fa-print"></i>
                                </span>
                                <span>Print</span>
                            </button>
                            <button type = "button" class = "invoice-btn">
                                <span>
                                    <i class="fa-solid fa-download"></i>
                                </span>
                                <span>Download</span>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <script >function printInvoice(){
            window.print();
        }</script>
        
        	     <%@ include file="footer.jsp" %>
        
       
        
    </body>
</html>