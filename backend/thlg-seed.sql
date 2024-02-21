

-- both test users have the password "password"

INSERT INTO users (username, password, first_name, last_name, email)
VALUES ('james4',
        '$2b$12$AZH7virni5jlTTiGgEg4zu3lSvAw68qVEfSIOjJ3RqtbJbdW/Oi5q',
        'James',
        'Peters',
        'jamie44@joelburton.com'),
INSERT INTO conditions (id, diagnosis)
VALUES ('001', 'CHD'),
       ('002', 'Type 2 Diabetes'),
       ('003', 'Obesity'),
       ('004', 'Stroke'),
       ('005', 'COPD');
       

INSERT INTO nutriLife (id, prognosis, guideline_id, guidelines, nutrition)
VALUES ('1', 'CHD', '001', '1. Check your blood pressure regularly and take your medications regularly.
2. To quit or avoid smoking as well as try to avoid secondhand smoke.
3. Avoid inhaling chemical fumes, and dust, which can irritate your lungs.
4. Stay active and exercise at least 30 minutes, five time a week, which is beneficial physically and psychologically and good for the heart and the brain.
5. Get at least 7 hours of deep sleep a night, which is also good for the brain.
6. Maintain a healthy diet of fruits, vegetables and foods that are high in nutrients and
particularly diabetes patients should monitor carbohydrate and calorie intake.
7. Avoid or minimize highly processed foods, saturated and trans-fat, alcohol, caffeine,
artificial sweeteners and reduce sugar and salt intake, as most research suggests that some
foods can negatively affect the brain.
8. Sustain excellent communication with family, friends and neighbors to refrain from
isolation.
9. Always remember to take your medication as they cure, prevent diseases or relieve
symptoms and save lives.
10. abstain or minimize alcohol intake', 
'1.	Fresh or steamed vegetables such as carrots, broccoli, zucchini, cauliflower, salad greens, etc. They are low in calories and sufficiently packed with minerals, vitamins, fiber, and antioxidants. 
2.	Lean proteins include turkey and chicken breast (skin removed), quinoa, fish fillet, shellfish, beans, etc. They give energy, support cognitive function, help lower cholesterol, and reduce the risk of developing health problems. 
3.	Unsaturated (Polyunsaturated and monosaturated) fats such as nuts, seeds, olive oil, peanut oil, avocado, fatty fish (salmon, mackerel, albacore tuna), etc. They help lower total cholesterol levels and protect the brain and heart. They cannot be produced by the body but are obtained from food. 
4.	Fruits include apples, bananas, kiwi, mango, and berries. They are sufficiently dense with minerals, vitamins, fiber, and antioxidants. 
5.	Fat-free milk such as low-fat milk, plain yogurt, etc. They give energy, support cognitive function, and reduce the risk of developing health problems. 
'),

('2', 'Type 2 Diabetes', '002', '1. Check your blood pressure regularly and take your medications regularly.
2. To quit or avoid smoking as well as try to avoid secondhand smoke.
3. Avoid inhaling chemical fumes, and dust, which can irritate your lungs.
4. Stay active and exercise at least 30 minutes, five time a week, which is beneficial physically and psychologically and good for the heart and the brain.
5. Get at least 7 hours of deep sleep a night, which is also good for the brain.
6. Maintain a healthy diet of fruits, vegetables and foods that are high in nutrients and
particularly diabetes patients should monitor carbohydrate and calorie intake.
7. Avoid or minimize highly processed foods, saturated and trans-fat, alcohol, caffeine,
artificial sweeteners and reduce sugar and salt intake, as most research suggests that some
foods can negatively affect the brain.
8. Sustain excellent communication with family, friends and neighbors to refrain from
isolation.
9. Always remember to take your medication as they cure, prevent diseases or relieve
symptoms and save lives.
10. abstain or minimize alcohol intake', 
'1.	Fresh or steamed vegetables such as carrots, broccoli, zucchini, cauliflower, salad greens, etc. They are low in calories and sufficiently packed with minerals, vitamins, fiber, and antioxidants. 
2.	Lean proteins include turkey and chicken breast (skin removed), quinoa, fish fillet, shellfish, beans, etc. They give energy, support cognitive function, help lower cholesterol, and reduce the risk of developing health problems. 
3.	Unsaturated (Polyunsaturated and monosaturated) fats such as nuts, seeds, olive oil, peanut oil, avocado, fatty fish (salmon, mackerel, albacore tuna), etc. They help lower total cholesterol levels and protect the brain and heart. They cannot be produced by the body but are obtained from food. 
4.	Fruits include apples, bananas, kiwi, mango, and berries. They are sufficiently dense with minerals, vitamins, fiber, and antioxidants. 
5.	Fat-free milk such as low-fat milk, plain yogurt, etc. They give energy, support cognitive function, and reduce the risk of developing health problems. 
'),
('3', 'obesity', '003', '1. Check your blood pressure regularly and take your medications regularly.
2. To quit or avoid smoking as well as try to avoid secondhand smoke.
3. Avoid inhaling chemical fumes, and dust, which can irritate your lungs.
4. Stay active and exercise at least 30 minutes, five time a week, which is beneficial physically and psychologically and good for the heart and the brain.
5. Get at least 7 hours of deep sleep a night, which is also good for the brain.
6. Maintain a healthy diet of fruits, vegetables and foods that are high in nutrients and
particularly diabetes patients should monitor carbohydrate and calorie intake.
7. Avoid or minimize highly processed foods, saturated and trans-fat, alcohol, caffeine,
artificial sweeteners and reduce sugar and salt intake, as most research suggests that some
foods can negatively affect the brain.
8. Sustain excellent communication with family, friends and neighbors to refrain from
isolation.
9. Always remember to take your medication as they cure, prevent diseases or relieve
symptoms and save lives.
10. abstain or minimize alcohol intake',
'1.	Fresh or steamed vegetables such as carrots, broccoli, zucchini, cauliflower, salad greens, etc. They are low in calories and sufficiently packed with minerals, vitamins, fiber, and antioxidants. 
2.	Lean proteins include turkey and chicken breast (skin removed), quinoa, fish fillet, shellfish, beans, etc. They give energy, support cognitive function, help lower cholesterol, and reduce the risk of developing health problems. 
3.	Unsaturated (Polyunsaturated and monosaturated) fats such as nuts, seeds, olive oil, peanut oil, avocado, fatty fish (salmon, mackerel, albacore tuna), etc. They help lower total cholesterol levels and protect the brain and heart. They cannot be produced by the body but are obtained from food. 
4.	Fruits include apples, bananas, kiwi, mango, and berries. They are sufficiently dense with minerals, vitamins, fiber, and antioxidants. 
5.	Fat-free milk such as low-fat milk, plain yogurt, etc. They give energy, support cognitive function, and reduce the risk of developing health problems. 
'),
('4', 'stroke', '004', '1. Check your blood pressure regularly and take your medications regularly.
2. To quit or avoid smoking as well as try to avoid secondhand smoke.
3. Avoid inhaling chemical fumes, and dust, which can irritate your lungs.
4. Stay active and exercise at least 30 minutes, five time a week, which is beneficial physically and psychologically and good for the heart and the brain.
5. Get at least 7 hours of deep sleep a night, which is also good for the brain.
6. Maintain a healthy diet of fruits, vegetables and foods that are high in nutrients and
particularly diabetes patients should monitor carbohydrate and calorie intake.
7. Avoid or minimize highly processed foods, saturated and trans-fat, alcohol, caffeine,
artificial sweeteners and reduce sugar and salt intake, as most research suggests that some
foods can negatively affect the brain.
8. Sustain excellent communication with family, friends and neighbors to refrain from
isolation.
9. Always remember to take your medication as they cure, prevent diseases or relieve
symptoms and save lives.
10. abstain or minimize alcohol intake', 
'1.	Fresh or steamed vegetables such as carrots, broccoli, zucchini, cauliflower, salad greens, etc. They are low in calories and sufficiently packed with minerals, vitamins, fiber, and antioxidants. 
2.	Lean proteins include turkey and chicken breast (skin removed), quinoa, fish fillet, shellfish, beans, etc. They give energy, support cognitive function, help lower cholesterol, and reduce the risk of developing health problems. 
3.	Unsaturated (Polyunsaturated and monosaturated) fats such as nuts, seeds, olive oil, peanut oil, avocado, fatty fish (salmon, mackerel, albacore tuna), etc. They help lower total cholesterol levels and protect the brain and heart. They cannot be produced by the body but are obtained from food. 
4.	Fruits include apples, bananas, kiwi, mango, and berries. They are sufficiently dense with minerals, vitamins, fiber, and antioxidants. 
5.	Fat-free milk such as low-fat milk, plain yogurt, etc. They give energy, support cognitive function, and reduce the risk of developing health problems.
'),
('5', 'COPD', '005', '1. Check your blood pressure regularly and take your medications regularly.
2. To quit or avoid smoking as well as try to avoid secondhand smoke.
3. Avoid inhaling chemical fumes, and dust, which can irritate your lungs.
4. Stay active and exercise at least 30 minutes, five time a week, which is beneficial physically and psychologically and good for the heart and the brain.
5. Get at least 7 hours of deep sleep a night, which is also good for the brain.
6. Maintain a healthy diet of fruits, vegetables and foods that are high in nutrients and
particularly diabetes patients should monitor carbohydrate and calorie intake.
7. Avoid or minimize highly processed foods, saturated and trans-fat, alcohol, caffeine,
artificial sweeteners and reduce sugar and salt intake, as most research suggests that some
foods can negatively affect the brain.
8. Sustain excellent communication with family, friends and neighbors to refrain from
isolation.
9. Always remember to take your medication as they cure, prevent diseases or relieve
symptoms and save lives.
10. abstain or minimize alcohol intake',
'1.	Fresh or steamed vegetables such as carrots, broccoli, zucchini, cauliflower, salad greens, etc. They are low in calories and sufficiently packed with minerals, vitamins, fiber, and antioxidants. 
2.	Lean proteins include turkey and chicken breast (skin removed), quinoa, fish fillet, shellfish, beans, etc. They give energy, support cognitive function, help lower cholesterol, and reduce the risk of developing health problems. 
3.	Unsaturated (Polyunsaturated and monosaturated) fats such as nuts, seeds, olive oil, peanut oil, avocado, fatty fish (salmon, mackerel, albacore tuna), etc. They help lower total cholesterol levels and protect the brain and heart. They cannot be produced by the body but are obtained from food. 
4.	Fruits include apples, bananas, kiwi, mango, and berries. They are sufficiently dense with minerals, vitamins, fiber, and antioxidants. 
5.	Fat-free milk such as low-fat milk, plain yogurt, etc. They give energy, support cognitive function, and reduce the risk of developing health problems.
');