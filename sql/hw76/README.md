## NETOLOGY HOMEWORK 7.6

### Ответы
1. 
    [resource](https://github.com/hashicorp/terraform-provider-aws/blob/main/internal/provider/provider.go#L751) и [data_source](https://github.com/hashicorp/terraform-provider-aws/blob/main/internal/provider/provider.go#L346)  
2.  
   * [Параметр name конфликтует с prefix_name](https://github.com/hashicorp/terraform-provider-aws/blob/main/internal/service/sqs/queue.go#L87)  
   * [максимальная длина имени](https://github.com/hashicorp/terraform-provider-aws/blob/main/internal/service/connect/queue.go#L58)
   * [regexp.MustCompile](https://github.com/hashicorp/terraform-provider-aws/blob/main/internal/service/sqs/queue.go#L423)
