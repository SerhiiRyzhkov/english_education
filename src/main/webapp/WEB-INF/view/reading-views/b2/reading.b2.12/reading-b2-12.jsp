<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<html>
<head>
<title>Personality and health</title>
</head>
<body>
<h1>B2 Reading Test</h1>
<h2>Personality and health</h2>
<br>
There is increasing evidence that health is linked to personality. However, until now, the relationship has not affected the way health care is delivered. There are several reasons for this. Some health workers doubt whether there is a direct link between health and personality or whether it`s just a coincidence. Some feel it is their professional duty to treat all patients in the same way. Others argue that delivering health services according to patients` personalities will have minimal impact and therefore isn`t worth the effort. However, some psychologists believe that applying different procedures to people with different personalities could have a significant, positive effect on health.

Research into personality has, in recent years, focused on the Big Five model of personality types. This model measures how neurotic, extrovert, open to experience, agreeable and conscientious a person is. Some of these personality types have been studied in relation to health. For example, conscientious people tend to be less likely to smoke, drink too much alcohol or be inactive. However, in other cases, the relationship is less clear. Neurotic behaviour, for instance, has been found in some studies to increase the risk of death, in others to protect people from illness and in others to have no link to health at all.

Even so, if health workers applied an understanding of personality to the services they provide, they could influence the extent to which patients act on advice and follow their treatment. For example, high sensation-seeking individuals, who are extroverts and unconscientious in the Big Five model and tend to take part in risky activities, respond to drama, energy and emotion. Thus, to encourage those people to follow health advice, health promotions can be designed to incorporate those factors. An example of this was the campaign SENTAR which aimed to reduce cannabis use among high sensation-seeking teenagers. By creating a suitable television advert, they successfully engaged these youths and reduced their recreational drug use. Of course, this approach isn`t always possible. It is often impractical and expensive to create several versions of a campaign to reach different personality types. However, recent developments in computer technology, cookies and targeted advertising may allow this approach to be used more in future.

Personality could also be considered when sending messages, information and guidance to specific patients. Already, health information is usually available in various forms ??? printed, digital, audio, and so on ??? to be suitable and accessible for different users, such as the blind, the elderly, and people with reading difficulties. Research has also shown that, by identifying different patients` motivations for treatment and then corresponding with them in a way that reflects their motivations, patients will become more involved in their treatment, compared to when the same messages are sent to everyone. Correspondence could, therefore, be adapted to reflect patients` personality type, too. For example, less conscientious people could be sent phone reminders to attend appointments. So far, there has been very little research into the effectiveness of tailoring health guidance according to personality, so this area deserves further study.

Until now, the focus of personality-health research has been to explore the link between personality and health and has had very little practical application. Thus, health workers have not engaged deeply with it. However, by suggesting, trialling and implementing practices to engage patients with different personalities, the relationship between psychology researchers and health workers could improve, along with the health of the general public.
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>


<h2>Task:</h2>
<br>
<br>
<form:form action="receive" modelAttribute="tasksAtt">
    Question ${indexAtt+1}/${amountAtt}
    <br>
    <br>
    <br>
    <br>
    ${curQuestionAtt.question}
    <br>
    <br>
    Choose the correct answer:
    <br>
    <input type="radio" value="1" name="choiceAtt" checked> ${curQuestionAtt.answer1}
    <br>
    <input type="radio" value="2" name="choiceAtt"> ${curQuestionAtt.answer2}
    <br>
    <input type="radio" value="3" name="choiceAtt"> ${curQuestionAtt.answer3}


    <br>
    <br>

    <input type="submit" value="OK" checked>

</form:form>

</body>
