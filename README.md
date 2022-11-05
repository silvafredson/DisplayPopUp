# Display Pop-up

This is a small project, part of my first App I've been working on, and I'm building it in Swift and SwiftUI.

In this App's project I'm using **CBL - Challenge Based Learning** framework and this little project is a guiding activity from CBL, the goal is to find answers to some questions about the project and learn how to create what we need to build the whole App.

___

### What I had learnig

#### 1. How to create a Button to call a  pop-up sheet using ```.sheet```

```Swift
Button {

    showSheet.toggle()

    } label: {

    VStack {
        Image(systemName: "plus.circle.fill")
            .resizable()
            .scaledToFill()
            .foregroundColor(.yellow)
        .frame(width: 60, height: 60)
        Text("Add your list")
            .foregroundColor(.white)
            .font(.headline)
            .frame(width: 110, height: 50)
    }
}
.sheet(isPresented: $showSheet) {
    SecondScreen()
}
```
<br>

#### 2. How to use ```GeometryReader```

```Swift
GeometryReader { buttonSize in
                
    VStack {
        
        Button {
            showSheet.toggle()
        } label: {
            
            VStack {
                Image(systemName: "plus.circle.fill")
                    .resizable()
                    .scaledToFill()
                    .foregroundColor(.yellow)
                .frame(width: 60, height: 60)
                Text("Add your list")
                    .foregroundColor(.white)
                    .font(.headline)
                    .frame(width: 110, height: 50)
            }
        }
        .sheet(isPresented: $showSheet) {
            SecondScreen()
        }
    }
    .frame(maxWidth: buttonSize.size.width, maxHeight: buttonSize.size.height * 0.95, alignment: .bottom)        
}
```
And this is the result, on any orientation the buttons fits perfectily on screen.

![Screenshot 2022-11-03 at 19 06 25](https://user-images.githubusercontent.com/92945868/199844859-bf0a6a30-0bae-47fb-94f4-e89f83bee129.png)
