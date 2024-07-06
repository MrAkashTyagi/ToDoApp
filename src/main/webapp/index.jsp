<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Yes/No Questions</title>
    <script>
        function toggleQuestion() {
            var answer = document.querySelector('input[name="question1"]:checked').value;
            var question2 = document.getElementById("question2");
            if (answer === "yes") {
                question2.style.display = "block";
            } else {
                question2.style.display = "none";
            }
        }
    </script>
</head>
<body>
    <h1>Answer the following questions:</h1>
    <form action="submitAnswers.jsp" method="post">
        <p>Question 1: Is Java your favorite programming language?</p>
        <input type="radio" name="question1" value="yes" onclick="toggleQuestion()"> Yes
        <input type="radio" name="question1" value="no" onclick="toggleQuestion()"> No
        <br>
        
        <div id="question2" style="display: none;">
            <p>Question 2: Do you enjoy coding in JSP?</p>
            <input type="radio" name="question2" value="yes"> Yes
            <input type="radio" name="question2" value="no"> No
            <br>
        </div>
        
        <p>Question 3: Are you familiar with servlets?</p>
        <input type="radio" name="question3" value="yes"> Yes
        <input type="radio" name="question3" value="no"> No
        <br><br>
        
        <input type="submit" value="Submit Answers">
    </form>
</body>
</html>