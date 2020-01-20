# Alert With TextField

## OeverView
<img width="1036" alt="image" src="https://user-images.githubusercontent.com/40315820/72709137-a27e8800-3ba7-11ea-89f9-810c85ff3457.png">

<img width="1036" alt="image-20200120170710458" src="https://user-images.githubusercontent.com/40315820/72709093-84b12300-3ba7-11ea-9f94-696b08de4112.png">

<img width="1036" alt="image" src="https://user-images.githubusercontent.com/40315820/72709159-aa3e2c80-3ba7-11ea-8d22-a4e25fe5aaba.png">

##Usage
```swift
@State var shown = false
    @State var text = ""
    var body: some View {
        ZStack{
            //main page design ...
            Button(action: {
                self.text = ""
                self.shown.toggle()
            }){
                Text("button")
                
            }
                
            if self.shown{
                alertView(text: self.$text, shown: self.$shown) //alertView is Custom Alert
            }
            else{
                alertView(text: self.$text, shown: self.$shown).hidden()
            }
            
        }
    }
```
