import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuestionScreen(),
    );
  }
}

class QuestionScreen extends StatefulWidget {
  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  String userAnswer = "";
  String correctAnswer = "C";
  String gptResponse = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Animated question UI
            _buildQuestionWidget(),

            // Options for the multiple-choice question
            _buildOption("150", "A"),
            _buildOption("100", "B"),
            _buildOption("78", "C"),
            _buildOption("89", "D"),

            // Submit button
            ElevatedButton(
              onPressed: () async {
                // Check the user's answer
                _checkAnswer();

                // After checking the answer, initiate chat for explanation
                await _initiateChat();
              },
              child: Text("Submit"),
            ),

            // Display GPT response
            gptResponse.isNotEmpty
                ? Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "ChatGPT Response: $gptResponse",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
                : Container(),
          ],
        ),
      ),
    );
  }

  Widget _buildQuestionWidget() {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0),
            blurRadius: 6.0,
          ),
        ],
      ),
      child: Text(
        "IF 1kg sugar price is 50rs, then what is the cost of 3kg sugar?",
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildOption(String optionText, String option) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
        onTap: () {
          setState(() {
            userAnswer = option;
          });
        },
        child: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: userAnswer == option ? Colors.green : Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.blue),
          ),
          child: Text(
            optionText,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  void _checkAnswer() {
    // Compare user's answer with correct answer
    String result = (userAnswer == correctAnswer) ? "Correct!" : "Incorrect!";

    // Show result in a dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Result"),
          content: Text(result),
          actions: [
            TextButton(
              onPressed: () {
                // Close the dialog
                Navigator.of(context).pop();
              },
              child: Text("OK"),
            ),
          ],
        );
      },
    );
  }

  Future<void> _initiateChat() async {
    try {
      // Replace "YOUR_CHATGPT_API_ENDPOINT" with the actual ChatGPT API endpoint
      String chatGptApiEndpoint = "YOUR_CHATGPT_API_ENDPOINT";

      // Make an HTTP POST request to ChatGPT
      Response response = await Dio().post(
        chatGptApiEndpoint,
        data: {
          "messages": [
            {"role": "system", "content": "You are a helpful assistant."},
            {"role": "user", "content": "Explain the answer."},
          ],
        },
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer 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",
          },
        ),
      );

      // Extract the ChatGPT response
      String chatGptResponse = response.data["choices"][0]["message"]["content"];

      setState(() {
        gptResponse = chatGptResponse;
      });

      // Display the ChatGPT response in a dialog
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("ChatGPT Explanation"),
            content: Text(chatGptResponse),
            actions: [
              TextButton(
                onPressed: () {
                  // Close the dialog
                  Navigator.of(context).pop();
                },
                child: Text("OK"),
              ),
            ],
          );
        },
      );
    } catch (e) {
      print("Error: $e");
      // Handle error as needed
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Error"),
            content: Text("Error occurred during ChatGPT integration"),
            actions: [
              TextButton(
                onPressed: () {
                  // Close the dialog
                  Navigator.of(context).pop();
                },
                child: Text("OK"),
              ),
            ],
          );
        },
      );
    }
  }
}
