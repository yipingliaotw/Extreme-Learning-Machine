##Extreme Learning Machine
### Training process
- Input: training data, training target, and number of hidden neruons
- Output: Input weight that is ranomdly geneated and output weight
```matlab
[InputWeight, OutputWeight] = elm_train(input,target,N)
```

### Test process
- Input: test data, input weight, and output weight that got from trainig
- Output: test results

```matlab
result = elm_test(input,InputWeight,OutputWeight)
```
