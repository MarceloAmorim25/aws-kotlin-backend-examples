# Simple Notification Service

- O SNS é uma ferramenta muito útil para desacoplar aplicações (A2A - Application-to-application);
- Também pode ser utilizada para notificação direta ao usuário (A2P - Application-to-person);

- Referente ao contexto de A2A, o SNS pode ser integrar ao SQS, Lambda, Kinesis Data Firehose. 
- Já no contexto A2P, o SNS pode enviar email, push notifications ou SMS.

- Definição via documentação: "Amazon Simple Notification Service (Amazon SNS) is a managed service that provides message delivery from publishers to subscribers (also known as producers and consumers). Publishers communicate asynchronously with subscribers by sending messages to a topic, which is a logical access point and communication channel. Clients can subscribe to the SNS topic and receive published messages using a supported endpoint type, such as Amazon Kinesis Data Firehose, Amazon SQS, AWS Lambda, HTTP, email, mobile push notifications, and mobile text messages (SMS).".

doc: https://docs.aws.amazon.com/sns/latest/dg/welcome.html