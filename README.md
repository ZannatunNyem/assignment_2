# assignment_2
১.What is PostgreSQL?
PostgreSQL হলো একটি অত্যন্ত জনপ্রিয় ওপেন সোর্স রিলেশনাল ডেটাবেজ ম্যানেজমেন্ট সিস্টেম (RDBMS)। এটি SQL (Structured Query Language) ব্যবহার করে ডেটা পরিচালনা করে এবং বিভিন্ন ধরনের জটিল ডেটা অপারেশন সমর্থন করে।PostgreSQL এর অনেক গুরুত্বপূর্ণ বৈশিষ্ট্য রয়েছে। এটি ছোট , বড় সব ধরনের ডেটাসেট দক্ষভাবে পরিচালনা করতে সক্ষম। ডেটার পরিমাণ বা ব্যবহারকারীর সংখ্যা যতই বেশি হোক না কেন, এটি অত্যন্ত scalable, নিরাপদ এবং কাস্টমাইজযোগ্য। এই ডেটাবেজটি বড় বড় অ্যাপ্লিকেশন ও সফটওয়্যারে ব্যবহারের জন্য উপযোগী।

২. What is the purpose of a database schema in PostgreSQL?
ডাটাবেসের মধ্যে বিভিন্ন ধরনের ডাটাবেজ অবজেক্ট থাকে যেমন টেবিল, ভিউ, ফাংশন ইত্যাদি। স্কিমা হলো এই অবজেক্টগুলোকে সংগঠিত  করার একটি উপায়।এর সাহায্যে একটি ডাটাবেসে একই নামের অনেক টেবিল রাখা সম্ভব  । কারণ সেগুলি আলাদা আলাদা স্কিমার মধ্যে থাকে ।
। বড় ডেটাবেজে ডেটা সঠিক ভাবে ম্যানেজ করতে স্কিমা গুরুত্বপূর্ণ ভূমিকা রাখে।টেবিল ও অন্যান্য অবজেক্টগুলোকে বিভিন্ন স্কিমাতে ভাগ করে রাখলে  রক্ষণাবেক্ষণ সহজ হয়। এছাড়াও স্কিমায় নির্দিষ্ট ইউজার পারমিশন দেওয়া যায়। এতে নিরাপত্তা বজায় থাকে। 

৩.Explain the Primary Key and Foreign Key concepts in PostgreSQL.
Primary Key:
এটি এমন একটি কলাম যা প্রতিটি রেকর্ডকে আলাদা আলাদা ভাবে সনাক্ত করে পারে। এক টেবিলে কেবল একটি Primary Key থাকতে পারে এবং এটি কখনোই NULL হতে পারে না।
Foreign Key :
Foreign Key একটি কলাম যা অন্য টেবিলের Primary Key এর রেফারেন্স হিসেবে কাজ করে এবং  দুইটি টেবিলের মধ্যে সম্পর্ক  তৈরি করে।এটি  NULL হতে পারে ।


৪.What is the difference between the VARCHAR and CHAR data types?
CHAR এবং VARCHAR এ দুটিই স্ট্রিং ডেটা সংরক্ষণের জন্য ব্যবহৃত হয়কিন্তু এদের মধ্যে কিছু পার্থক্য রয়েছে:
CHAR: 
CHAR এর একটি size নির্দিষ্ট  আছে। যেমন: CHAR(10) দিলে তা সবসময় ১০ অক্ষরের জায়গা দখল করে এবং জায়গা বাকি  থাকলেও তা পূরণ করে।
এটি  বেশি মেমোরি বেশি ব্যবহার করে।
VARCHAR: 
VARCHAR এর size পরিবর্তনশীল । যেমন: VARCHAR(10) দিলে শুধুমাত্র সেইটুকু অক্ষরের জন্যই জায়গা নেবে। জায়গা ফাঁকা থাকলে নিবে না ।
এটি তুলনামূলকভাবে কম মেমোরি ব্যবহার করে ।


৫.Explain the purpose of the WHERE clause in a SELECT statement.
কোনো টেবিল থেকে ডেটা ফিল্টার  করার জন্য
WHERE clause ব্যবহার করা হয় ।এতে খুব সহজে ডাটা খুঁজে বের করা যায়।অপ্রয়োজনীয় ডাটা বাদ দিয়ে প্রয়োজনীয় তথ্য পাওয়া যায়।
এতে ডেটাবেজের পারফরম্যান্স বাড়ে ।