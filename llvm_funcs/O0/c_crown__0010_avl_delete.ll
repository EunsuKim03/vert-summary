; ModuleID = 'benchmark/c_crown/0010_avl_delete/delete_processed.c'
source_filename = "benchmark/c_crown/0010_avl_delete/delete_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Node = type { i32, %struct.Node*, %struct.Node*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getBalance(%struct.Node* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.Node*, align 8
  store %struct.Node* %0, %struct.Node** %3, align 8
  %4 = load %struct.Node*, %struct.Node** %3, align 8
  %5 = icmp eq %struct.Node* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %17

7:                                                ; preds = %1
  %8 = load %struct.Node*, %struct.Node** %3, align 8
  %9 = getelementptr inbounds %struct.Node, %struct.Node* %8, i32 0, i32 1
  %10 = load %struct.Node*, %struct.Node** %9, align 8
  %11 = call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %10)
  %12 = load %struct.Node*, %struct.Node** %3, align 8
  %13 = getelementptr inbounds %struct.Node, %struct.Node* %12, i32 0, i32 2
  %14 = load %struct.Node*, %struct.Node** %13, align 8
  %15 = call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %14)
  %16 = sub nsw i32 %11, %15
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %7, %6
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare i32 @height(...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Node* @leftRotate(%struct.Node* noundef %0) #0 {
  %2 = alloca %struct.Node*, align 8
  %3 = alloca %struct.Node*, align 8
  %4 = alloca %struct.Node*, align 8
  store %struct.Node* %0, %struct.Node** %2, align 8
  %5 = load %struct.Node*, %struct.Node** %2, align 8
  %6 = getelementptr inbounds %struct.Node, %struct.Node* %5, i32 0, i32 2
  %7 = load %struct.Node*, %struct.Node** %6, align 8
  store %struct.Node* %7, %struct.Node** %3, align 8
  %8 = load %struct.Node*, %struct.Node** %3, align 8
  %9 = getelementptr inbounds %struct.Node, %struct.Node* %8, i32 0, i32 1
  %10 = load %struct.Node*, %struct.Node** %9, align 8
  store %struct.Node* %10, %struct.Node** %4, align 8
  %11 = load %struct.Node*, %struct.Node** %4, align 8
  %12 = load %struct.Node*, %struct.Node** %2, align 8
  %13 = getelementptr inbounds %struct.Node, %struct.Node* %12, i32 0, i32 2
  store %struct.Node* %11, %struct.Node** %13, align 8
  %14 = load %struct.Node*, %struct.Node** %2, align 8
  %15 = getelementptr inbounds %struct.Node, %struct.Node* %14, i32 0, i32 1
  %16 = load %struct.Node*, %struct.Node** %15, align 8
  %17 = call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %16)
  %18 = load %struct.Node*, %struct.Node** %2, align 8
  %19 = getelementptr inbounds %struct.Node, %struct.Node* %18, i32 0, i32 2
  %20 = load %struct.Node*, %struct.Node** %19, align 8
  %21 = call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %20)
  %22 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %17, i32 noundef %21)
  %23 = add nsw i32 %22, 1
  %24 = load %struct.Node*, %struct.Node** %2, align 8
  %25 = getelementptr inbounds %struct.Node, %struct.Node* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  %26 = load %struct.Node*, %struct.Node** %2, align 8
  %27 = load %struct.Node*, %struct.Node** %3, align 8
  %28 = getelementptr inbounds %struct.Node, %struct.Node* %27, i32 0, i32 1
  store %struct.Node* %26, %struct.Node** %28, align 8
  %29 = load %struct.Node*, %struct.Node** %3, align 8
  %30 = getelementptr inbounds %struct.Node, %struct.Node* %29, i32 0, i32 1
  %31 = load %struct.Node*, %struct.Node** %30, align 8
  %32 = call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %31)
  %33 = load %struct.Node*, %struct.Node** %3, align 8
  %34 = getelementptr inbounds %struct.Node, %struct.Node* %33, i32 0, i32 2
  %35 = load %struct.Node*, %struct.Node** %34, align 8
  %36 = call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %35)
  %37 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %32, i32 noundef %36)
  %38 = add nsw i32 %37, 1
  %39 = load %struct.Node*, %struct.Node** %3, align 8
  %40 = getelementptr inbounds %struct.Node, %struct.Node* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = load %struct.Node*, %struct.Node** %3, align 8
  ret %struct.Node* %41
}

declare i32 @max(...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Node* @rightRotate(%struct.Node* noundef %0) #0 {
  %2 = alloca %struct.Node*, align 8
  %3 = alloca %struct.Node*, align 8
  %4 = alloca %struct.Node*, align 8
  store %struct.Node* %0, %struct.Node** %2, align 8
  %5 = load %struct.Node*, %struct.Node** %2, align 8
  %6 = getelementptr inbounds %struct.Node, %struct.Node* %5, i32 0, i32 1
  %7 = load %struct.Node*, %struct.Node** %6, align 8
  store %struct.Node* %7, %struct.Node** %3, align 8
  %8 = load %struct.Node*, %struct.Node** %3, align 8
  %9 = getelementptr inbounds %struct.Node, %struct.Node* %8, i32 0, i32 2
  %10 = load %struct.Node*, %struct.Node** %9, align 8
  store %struct.Node* %10, %struct.Node** %4, align 8
  %11 = load %struct.Node*, %struct.Node** %4, align 8
  %12 = load %struct.Node*, %struct.Node** %2, align 8
  %13 = getelementptr inbounds %struct.Node, %struct.Node* %12, i32 0, i32 1
  store %struct.Node* %11, %struct.Node** %13, align 8
  %14 = load %struct.Node*, %struct.Node** %2, align 8
  %15 = getelementptr inbounds %struct.Node, %struct.Node* %14, i32 0, i32 1
  %16 = load %struct.Node*, %struct.Node** %15, align 8
  %17 = call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %16)
  %18 = load %struct.Node*, %struct.Node** %2, align 8
  %19 = getelementptr inbounds %struct.Node, %struct.Node* %18, i32 0, i32 2
  %20 = load %struct.Node*, %struct.Node** %19, align 8
  %21 = call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %20)
  %22 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %17, i32 noundef %21)
  %23 = add nsw i32 %22, 1
  %24 = load %struct.Node*, %struct.Node** %2, align 8
  %25 = getelementptr inbounds %struct.Node, %struct.Node* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  %26 = load %struct.Node*, %struct.Node** %2, align 8
  %27 = load %struct.Node*, %struct.Node** %3, align 8
  %28 = getelementptr inbounds %struct.Node, %struct.Node* %27, i32 0, i32 2
  store %struct.Node* %26, %struct.Node** %28, align 8
  %29 = load %struct.Node*, %struct.Node** %3, align 8
  %30 = getelementptr inbounds %struct.Node, %struct.Node* %29, i32 0, i32 1
  %31 = load %struct.Node*, %struct.Node** %30, align 8
  %32 = call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %31)
  %33 = load %struct.Node*, %struct.Node** %3, align 8
  %34 = getelementptr inbounds %struct.Node, %struct.Node* %33, i32 0, i32 2
  %35 = load %struct.Node*, %struct.Node** %34, align 8
  %36 = call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %35)
  %37 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %32, i32 noundef %36)
  %38 = add nsw i32 %37, 1
  %39 = load %struct.Node*, %struct.Node** %3, align 8
  %40 = getelementptr inbounds %struct.Node, %struct.Node* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = load %struct.Node*, %struct.Node** %3, align 8
  ret %struct.Node* %41
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Node* @deleteNode(%struct.Node* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.Node*, align 8
  %4 = alloca %struct.Node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.Node*, align 8
  %7 = alloca %struct.Node*, align 8
  %8 = alloca i32, align 4
  store %struct.Node* %0, %struct.Node** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.Node*, %struct.Node** %4, align 8
  %10 = icmp eq %struct.Node* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load %struct.Node*, %struct.Node** %4, align 8
  store %struct.Node* %12, %struct.Node** %3, align 8
  br label %178

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.Node*, %struct.Node** %4, align 8
  %16 = getelementptr inbounds %struct.Node, %struct.Node* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  %20 = load %struct.Node*, %struct.Node** %4, align 8
  %21 = getelementptr inbounds %struct.Node, %struct.Node* %20, i32 0, i32 1
  %22 = load %struct.Node*, %struct.Node** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call %struct.Node* @deleteNode(%struct.Node* noundef %22, i32 noundef %23)
  %25 = load %struct.Node*, %struct.Node** %4, align 8
  %26 = getelementptr inbounds %struct.Node, %struct.Node* %25, i32 0, i32 1
  store %struct.Node* %24, %struct.Node** %26, align 8
  br label %97

27:                                               ; preds = %13
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.Node*, %struct.Node** %4, align 8
  %30 = getelementptr inbounds %struct.Node, %struct.Node* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp sgt i32 %28, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %27
  %34 = load %struct.Node*, %struct.Node** %4, align 8
  %35 = getelementptr inbounds %struct.Node, %struct.Node* %34, i32 0, i32 2
  %36 = load %struct.Node*, %struct.Node** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call %struct.Node* @deleteNode(%struct.Node* noundef %36, i32 noundef %37)
  %39 = load %struct.Node*, %struct.Node** %4, align 8
  %40 = getelementptr inbounds %struct.Node, %struct.Node* %39, i32 0, i32 2
  store %struct.Node* %38, %struct.Node** %40, align 8
  br label %96

41:                                               ; preds = %27
  %42 = load %struct.Node*, %struct.Node** %4, align 8
  %43 = getelementptr inbounds %struct.Node, %struct.Node* %42, i32 0, i32 1
  %44 = load %struct.Node*, %struct.Node** %43, align 8
  %45 = icmp eq %struct.Node* %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load %struct.Node*, %struct.Node** %4, align 8
  %48 = getelementptr inbounds %struct.Node, %struct.Node* %47, i32 0, i32 2
  %49 = load %struct.Node*, %struct.Node** %48, align 8
  %50 = icmp eq %struct.Node* %49, null
  br i1 %50, label %51, label %74

51:                                               ; preds = %46, %41
  %52 = load %struct.Node*, %struct.Node** %4, align 8
  %53 = getelementptr inbounds %struct.Node, %struct.Node* %52, i32 0, i32 1
  %54 = load %struct.Node*, %struct.Node** %53, align 8
  %55 = icmp ne %struct.Node* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load %struct.Node*, %struct.Node** %4, align 8
  %58 = getelementptr inbounds %struct.Node, %struct.Node* %57, i32 0, i32 1
  %59 = load %struct.Node*, %struct.Node** %58, align 8
  br label %64

60:                                               ; preds = %51
  %61 = load %struct.Node*, %struct.Node** %4, align 8
  %62 = getelementptr inbounds %struct.Node, %struct.Node* %61, i32 0, i32 2
  %63 = load %struct.Node*, %struct.Node** %62, align 8
  br label %64

64:                                               ; preds = %60, %56
  %65 = phi %struct.Node* [ %59, %56 ], [ %63, %60 ]
  store %struct.Node* %65, %struct.Node** %6, align 8
  %66 = load %struct.Node*, %struct.Node** %6, align 8
  %67 = icmp eq %struct.Node* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load %struct.Node*, %struct.Node** %4, align 8
  store %struct.Node* %69, %struct.Node** %6, align 8
  store %struct.Node* null, %struct.Node** %4, align 8
  br label %73

70:                                               ; preds = %64
  %71 = load %struct.Node*, %struct.Node** %6, align 8
  %72 = bitcast %struct.Node* %71 to i8*
  call void @free(i8* noundef %72) #3
  br label %73

73:                                               ; preds = %70, %68
  br label %95

74:                                               ; preds = %46
  %75 = load %struct.Node*, %struct.Node** %4, align 8
  %76 = getelementptr inbounds %struct.Node, %struct.Node* %75, i32 0, i32 2
  %77 = load %struct.Node*, %struct.Node** %76, align 8
  %78 = call i32 (%struct.Node*, ...) bitcast (i32 (...)* @minValueNode to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %77)
  %79 = sext i32 %78 to i64
  %80 = inttoptr i64 %79 to %struct.Node*
  store %struct.Node* %80, %struct.Node** %7, align 8
  %81 = load %struct.Node*, %struct.Node** %7, align 8
  %82 = getelementptr inbounds %struct.Node, %struct.Node* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.Node*, %struct.Node** %4, align 8
  %85 = getelementptr inbounds %struct.Node, %struct.Node* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load %struct.Node*, %struct.Node** %4, align 8
  %87 = getelementptr inbounds %struct.Node, %struct.Node* %86, i32 0, i32 2
  %88 = load %struct.Node*, %struct.Node** %87, align 8
  %89 = load %struct.Node*, %struct.Node** %7, align 8
  %90 = getelementptr inbounds %struct.Node, %struct.Node* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call %struct.Node* @deleteNode(%struct.Node* noundef %88, i32 noundef %91)
  %93 = load %struct.Node*, %struct.Node** %4, align 8
  %94 = getelementptr inbounds %struct.Node, %struct.Node* %93, i32 0, i32 2
  store %struct.Node* %92, %struct.Node** %94, align 8
  br label %95

95:                                               ; preds = %74, %73
  br label %96

96:                                               ; preds = %95, %33
  br label %97

97:                                               ; preds = %96, %19
  %98 = load %struct.Node*, %struct.Node** %4, align 8
  %99 = icmp eq %struct.Node* %98, null
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = load %struct.Node*, %struct.Node** %4, align 8
  store %struct.Node* %101, %struct.Node** %3, align 8
  br label %178

102:                                              ; preds = %97
  %103 = load %struct.Node*, %struct.Node** %4, align 8
  %104 = getelementptr inbounds %struct.Node, %struct.Node* %103, i32 0, i32 1
  %105 = load %struct.Node*, %struct.Node** %104, align 8
  %106 = call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %105)
  %107 = load %struct.Node*, %struct.Node** %4, align 8
  %108 = getelementptr inbounds %struct.Node, %struct.Node* %107, i32 0, i32 2
  %109 = load %struct.Node*, %struct.Node** %108, align 8
  %110 = call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %109)
  %111 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %106, i32 noundef %110)
  %112 = add nsw i32 1, %111
  %113 = load %struct.Node*, %struct.Node** %4, align 8
  %114 = getelementptr inbounds %struct.Node, %struct.Node* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 8
  %115 = load %struct.Node*, %struct.Node** %4, align 8
  %116 = call i32 @getBalance(%struct.Node* noundef %115)
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %8, align 4
  %118 = icmp sgt i32 %117, 1
  br i1 %118, label %119, label %128

119:                                              ; preds = %102
  %120 = load %struct.Node*, %struct.Node** %4, align 8
  %121 = getelementptr inbounds %struct.Node, %struct.Node* %120, i32 0, i32 1
  %122 = load %struct.Node*, %struct.Node** %121, align 8
  %123 = call i32 @getBalance(%struct.Node* noundef %122)
  %124 = icmp sge i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %119
  %126 = load %struct.Node*, %struct.Node** %4, align 8
  %127 = call %struct.Node* @rightRotate(%struct.Node* noundef %126)
  store %struct.Node* %127, %struct.Node** %3, align 8
  br label %178

128:                                              ; preds = %119, %102
  %129 = load i32, i32* %8, align 4
  %130 = icmp sgt i32 %129, 1
  br i1 %130, label %131, label %146

131:                                              ; preds = %128
  %132 = load %struct.Node*, %struct.Node** %4, align 8
  %133 = getelementptr inbounds %struct.Node, %struct.Node* %132, i32 0, i32 1
  %134 = load %struct.Node*, %struct.Node** %133, align 8
  %135 = call i32 @getBalance(%struct.Node* noundef %134)
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %131
  %138 = load %struct.Node*, %struct.Node** %4, align 8
  %139 = getelementptr inbounds %struct.Node, %struct.Node* %138, i32 0, i32 1
  %140 = load %struct.Node*, %struct.Node** %139, align 8
  %141 = call %struct.Node* @leftRotate(%struct.Node* noundef %140)
  %142 = load %struct.Node*, %struct.Node** %4, align 8
  %143 = getelementptr inbounds %struct.Node, %struct.Node* %142, i32 0, i32 1
  store %struct.Node* %141, %struct.Node** %143, align 8
  %144 = load %struct.Node*, %struct.Node** %4, align 8
  %145 = call %struct.Node* @rightRotate(%struct.Node* noundef %144)
  store %struct.Node* %145, %struct.Node** %3, align 8
  br label %178

146:                                              ; preds = %131, %128
  %147 = load i32, i32* %8, align 4
  %148 = icmp slt i32 %147, -1
  br i1 %148, label %149, label %158

149:                                              ; preds = %146
  %150 = load %struct.Node*, %struct.Node** %4, align 8
  %151 = getelementptr inbounds %struct.Node, %struct.Node* %150, i32 0, i32 2
  %152 = load %struct.Node*, %struct.Node** %151, align 8
  %153 = call i32 @getBalance(%struct.Node* noundef %152)
  %154 = icmp sle i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %149
  %156 = load %struct.Node*, %struct.Node** %4, align 8
  %157 = call %struct.Node* @leftRotate(%struct.Node* noundef %156)
  store %struct.Node* %157, %struct.Node** %3, align 8
  br label %178

158:                                              ; preds = %149, %146
  %159 = load i32, i32* %8, align 4
  %160 = icmp slt i32 %159, -1
  br i1 %160, label %161, label %176

161:                                              ; preds = %158
  %162 = load %struct.Node*, %struct.Node** %4, align 8
  %163 = getelementptr inbounds %struct.Node, %struct.Node* %162, i32 0, i32 2
  %164 = load %struct.Node*, %struct.Node** %163, align 8
  %165 = call i32 @getBalance(%struct.Node* noundef %164)
  %166 = icmp sgt i32 %165, 0
  br i1 %166, label %167, label %176

167:                                              ; preds = %161
  %168 = load %struct.Node*, %struct.Node** %4, align 8
  %169 = getelementptr inbounds %struct.Node, %struct.Node* %168, i32 0, i32 2
  %170 = load %struct.Node*, %struct.Node** %169, align 8
  %171 = call %struct.Node* @rightRotate(%struct.Node* noundef %170)
  %172 = load %struct.Node*, %struct.Node** %4, align 8
  %173 = getelementptr inbounds %struct.Node, %struct.Node* %172, i32 0, i32 2
  store %struct.Node* %171, %struct.Node** %173, align 8
  %174 = load %struct.Node*, %struct.Node** %4, align 8
  %175 = call %struct.Node* @leftRotate(%struct.Node* noundef %174)
  store %struct.Node* %175, %struct.Node** %3, align 8
  br label %178

176:                                              ; preds = %161, %158
  %177 = load %struct.Node*, %struct.Node** %4, align 8
  store %struct.Node* %177, %struct.Node** %3, align 8
  br label %178

178:                                              ; preds = %176, %167, %155, %137, %125, %100, %11
  %179 = load %struct.Node*, %struct.Node** %3, align 8
  ret %struct.Node* %179
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

declare i32 @minValueNode(...) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
