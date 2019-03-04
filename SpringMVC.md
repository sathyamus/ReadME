
#### Spring 3 MVC and path attribute and square bracket
One thing here is worth noting that we haven’t used Spring’s tag to render textboxes. 
This is because Spring MVC 3 has a unique way of handling path attribute for tag. 

If we define the textbox as follows:

<c:forEach var="prizeRow" items="${prize.prizeRows}" varStatus="status"> \
<c:out value="${status.index}"></c:out> \

<form:input type="file" path="prizeRows[${status.index}].prizeImage" maxlength="30"/>

-------------- \

								<form:select path="eventId" cssClass="form-control" onchange="loadPrizes();">
									<form:option value="0">-- Select --</form:option>
									<c:forEach var="event" items="${events}">
										<form:option value="${event.eventId}">${event.eventName}</form:option>
									</c:forEach>
								</form:select>
								
-------------- \ 
<script>

var rootUrl = '${pageContext.request.contextPath}';

$(document).ready(function() {
	//alert('welcome ' + rootUrl);
}
);

function loadPrizes() {
	
	var str = $("form").serialize();
	var url = rootUrl + '/prize/loadPrize';
	
	$("#prizeForm").attr('action', url);
	$("form").submit();
	
}

</script>

http://viralpatel.net/blogs/spring-mvc-multi-row-submit-java-list/

