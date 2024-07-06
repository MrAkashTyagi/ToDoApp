
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Yes/No Questions</title>
</head>
<body>
    <h1>Answer the following questions:</h1>
    <form action="submitAnswers.jsp" method="post">
        <p>Question 1: Is Java your favorite programming language?</p>
        <input type="radio" name="question1" value="yes"> Yes
        <input type="radio" name="question1" value="no"> No
        <br>
        
        <c:if test="${param.question1 == 'yes'}">
            <p>Question 2: Do you enjoy coding in JSP?</p>
            <input type="radio" name="question2" value="yes"> Yes
            <input type="radio" name="question2" value="no"> No
            <br>
        </c:if>
        
        <p>Question 3: Are you familiar with servlets?</p>
        <input type="radio" name="question3" value="yes"> Yes
        <input type="radio" name="question3" value="no"> No
        <br><br>
        
        <input type="submit" value="Submit Answers">
    </form>
</body>
</html>