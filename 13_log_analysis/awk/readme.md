**Created a log file.**

![alt text](image.png)


**Simple format**
`awk 'commadn' filename`
![alt text](image-1.png)
`awk '{print}' app.log`
![alt text](image-2.png)

**Appyling filters**

![alt text](image-3.png)

![alt text](image-4.png)

![alt text](image-5.png)

![alt text](image-6.png)


![alt text](image-8.png)

![alt text](image-9.png)

![alt text](image-10.png)


---
`awk '/Feb/ {count++} END {print"Count of Feb in app file is:"", count}' app.log`

![alt text]({F555491B-0F9A-488D-8440-74CC6BE90988}.png)


**Using case add-ons**

- For searching specific pattern then listing the number of list using wc -l

```
awk ' /error/ {print} ' my.log | wc -l
```
```
awk ' /error/ && /ERROR/  {print} ' my.log | wc -l
```

- awk with NR use case

This will print first 5 lines of row
```
awk ' NR==5 {print} ' my.log | wc -l
```
This will print lines after row 5 upto the row 15
```
awk ' NR>=5 && NR<=15 {print} ' my.log | wc -l
```
![alt text](image-11.png)

- This will look for specific pattern and specific date in the column number 1 then will give first 5 output

```
awk '/WARN/ &&  $1=="2015-07-29"  {print}' my.log | wc -l
awk '/WARN/ &&  $1=="2015-07-29"  {print}' my.log | head -5
```

![alt text](image-12.png)