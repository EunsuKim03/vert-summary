; ModuleID = 'benchmark/c_crown/0001_avl_rotate/rotate_processed.c'
source_filename = "benchmark/c_crown/0001_avl_rotate/rotate_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Node = type { i32, %struct.Node*, %struct.Node*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @height(%struct.Node* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.Node*, align 8
  store %struct.Node* %0, %struct.Node** %3, align 8
  %4 = load %struct.Node*, %struct.Node** %3, align 8
  %5 = icmp eq %struct.Node* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %11

7:                                                ; preds = %1
  %8 = load %struct.Node*, %struct.Node** %3, align 8
  %9 = getelementptr inbounds %struct.Node, %struct.Node* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %2, align 4
  br label %11

11:                                               ; preds = %7, %6
  %12 = load i32, i32* %2, align 4
  ret i32 %12
}

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
  %17 = call i32 @height(%struct.Node* noundef %16)
  %18 = load %struct.Node*, %struct.Node** %2, align 8
  %19 = getelementptr inbounds %struct.Node, %struct.Node* %18, i32 0, i32 2
  %20 = load %struct.Node*, %struct.Node** %19, align 8
  %21 = call i32 @height(%struct.Node* noundef %20)
  %22 = call i32 @max(i32 noundef %17, i32 noundef %21)
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
  %32 = call i32 @height(%struct.Node* noundef %31)
  %33 = load %struct.Node*, %struct.Node** %3, align 8
  %34 = getelementptr inbounds %struct.Node, %struct.Node* %33, i32 0, i32 2
  %35 = load %struct.Node*, %struct.Node** %34, align 8
  %36 = call i32 @height(%struct.Node* noundef %35)
  %37 = call i32 @max(i32 noundef %32, i32 noundef %36)
  %38 = add nsw i32 %37, 1
  %39 = load %struct.Node*, %struct.Node** %3, align 8
  %40 = getelementptr inbounds %struct.Node, %struct.Node* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = load %struct.Node*, %struct.Node** %3, align 8
  ret %struct.Node* %41
}

declare i32 @max(i32 noundef, i32 noundef) #1

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
  %11 = call i32 @height(%struct.Node* noundef %10)
  %12 = load %struct.Node*, %struct.Node** %3, align 8
  %13 = getelementptr inbounds %struct.Node, %struct.Node* %12, i32 0, i32 2
  %14 = load %struct.Node*, %struct.Node** %13, align 8
  %15 = call i32 @height(%struct.Node* noundef %14)
  %16 = sub nsw i32 %11, %15
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %7, %6
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

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
  %17 = call i32 @height(%struct.Node* noundef %16)
  %18 = load %struct.Node*, %struct.Node** %2, align 8
  %19 = getelementptr inbounds %struct.Node, %struct.Node* %18, i32 0, i32 2
  %20 = load %struct.Node*, %struct.Node** %19, align 8
  %21 = call i32 @height(%struct.Node* noundef %20)
  %22 = call i32 @max(i32 noundef %17, i32 noundef %21)
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
  %32 = call i32 @height(%struct.Node* noundef %31)
  %33 = load %struct.Node*, %struct.Node** %3, align 8
  %34 = getelementptr inbounds %struct.Node, %struct.Node* %33, i32 0, i32 2
  %35 = load %struct.Node*, %struct.Node** %34, align 8
  %36 = call i32 @height(%struct.Node* noundef %35)
  %37 = call i32 @max(i32 noundef %32, i32 noundef %36)
  %38 = add nsw i32 %37, 1
  %39 = load %struct.Node*, %struct.Node** %3, align 8
  %40 = getelementptr inbounds %struct.Node, %struct.Node* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = load %struct.Node*, %struct.Node** %3, align 8
  ret %struct.Node* %41
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Node* @insert(%struct.Node* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.Node*, align 8
  %4 = alloca %struct.Node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.Node* %0, %struct.Node** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.Node*, %struct.Node** %4, align 8
  %8 = icmp eq %struct.Node* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = call i32 (i32, ...) bitcast (i32 (...)* @newNode to i32 (i32, ...)*)(i32 noundef %10)
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to %struct.Node*
  store %struct.Node* %13, %struct.Node** %3, align 8
  br label %129

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.Node*, %struct.Node** %4, align 8
  %17 = getelementptr inbounds %struct.Node, %struct.Node* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %14
  %21 = load %struct.Node*, %struct.Node** %4, align 8
  %22 = getelementptr inbounds %struct.Node, %struct.Node* %21, i32 0, i32 1
  %23 = load %struct.Node*, %struct.Node** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call %struct.Node* @insert(%struct.Node* noundef %23, i32 noundef %24)
  %26 = load %struct.Node*, %struct.Node** %4, align 8
  %27 = getelementptr inbounds %struct.Node, %struct.Node* %26, i32 0, i32 1
  store %struct.Node* %25, %struct.Node** %27, align 8
  br label %45

28:                                               ; preds = %14
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.Node*, %struct.Node** %4, align 8
  %31 = getelementptr inbounds %struct.Node, %struct.Node* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sgt i32 %29, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = load %struct.Node*, %struct.Node** %4, align 8
  %36 = getelementptr inbounds %struct.Node, %struct.Node* %35, i32 0, i32 2
  %37 = load %struct.Node*, %struct.Node** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call %struct.Node* @insert(%struct.Node* noundef %37, i32 noundef %38)
  %40 = load %struct.Node*, %struct.Node** %4, align 8
  %41 = getelementptr inbounds %struct.Node, %struct.Node* %40, i32 0, i32 2
  store %struct.Node* %39, %struct.Node** %41, align 8
  br label %44

42:                                               ; preds = %28
  %43 = load %struct.Node*, %struct.Node** %4, align 8
  store %struct.Node* %43, %struct.Node** %3, align 8
  br label %129

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44, %20
  %46 = load %struct.Node*, %struct.Node** %4, align 8
  %47 = getelementptr inbounds %struct.Node, %struct.Node* %46, i32 0, i32 1
  %48 = load %struct.Node*, %struct.Node** %47, align 8
  %49 = call i32 @height(%struct.Node* noundef %48)
  %50 = load %struct.Node*, %struct.Node** %4, align 8
  %51 = getelementptr inbounds %struct.Node, %struct.Node* %50, i32 0, i32 2
  %52 = load %struct.Node*, %struct.Node** %51, align 8
  %53 = call i32 @height(%struct.Node* noundef %52)
  %54 = call i32 @max(i32 noundef %49, i32 noundef %53)
  %55 = add nsw i32 1, %54
  %56 = load %struct.Node*, %struct.Node** %4, align 8
  %57 = getelementptr inbounds %struct.Node, %struct.Node* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  %58 = load %struct.Node*, %struct.Node** %4, align 8
  %59 = call i32 @getBalance(%struct.Node* noundef %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp sgt i32 %60, 1
  br i1 %61, label %62, label %73

62:                                               ; preds = %45
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.Node*, %struct.Node** %4, align 8
  %65 = getelementptr inbounds %struct.Node, %struct.Node* %64, i32 0, i32 1
  %66 = load %struct.Node*, %struct.Node** %65, align 8
  %67 = getelementptr inbounds %struct.Node, %struct.Node* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %63, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %62
  %71 = load %struct.Node*, %struct.Node** %4, align 8
  %72 = call %struct.Node* @rightRotate(%struct.Node* noundef %71)
  store %struct.Node* %72, %struct.Node** %3, align 8
  br label %129

73:                                               ; preds = %62, %45
  %74 = load i32, i32* %6, align 4
  %75 = icmp slt i32 %74, -1
  br i1 %75, label %76, label %87

76:                                               ; preds = %73
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.Node*, %struct.Node** %4, align 8
  %79 = getelementptr inbounds %struct.Node, %struct.Node* %78, i32 0, i32 2
  %80 = load %struct.Node*, %struct.Node** %79, align 8
  %81 = getelementptr inbounds %struct.Node, %struct.Node* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp sgt i32 %77, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %76
  %85 = load %struct.Node*, %struct.Node** %4, align 8
  %86 = call %struct.Node* @leftRotate(%struct.Node* noundef %85)
  store %struct.Node* %86, %struct.Node** %3, align 8
  br label %129

87:                                               ; preds = %76, %73
  %88 = load i32, i32* %6, align 4
  %89 = icmp sgt i32 %88, 1
  br i1 %89, label %90, label %107

90:                                               ; preds = %87
  %91 = load i32, i32* %5, align 4
  %92 = load %struct.Node*, %struct.Node** %4, align 8
  %93 = getelementptr inbounds %struct.Node, %struct.Node* %92, i32 0, i32 1
  %94 = load %struct.Node*, %struct.Node** %93, align 8
  %95 = getelementptr inbounds %struct.Node, %struct.Node* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp sgt i32 %91, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %90
  %99 = load %struct.Node*, %struct.Node** %4, align 8
  %100 = getelementptr inbounds %struct.Node, %struct.Node* %99, i32 0, i32 1
  %101 = load %struct.Node*, %struct.Node** %100, align 8
  %102 = call %struct.Node* @leftRotate(%struct.Node* noundef %101)
  %103 = load %struct.Node*, %struct.Node** %4, align 8
  %104 = getelementptr inbounds %struct.Node, %struct.Node* %103, i32 0, i32 1
  store %struct.Node* %102, %struct.Node** %104, align 8
  %105 = load %struct.Node*, %struct.Node** %4, align 8
  %106 = call %struct.Node* @rightRotate(%struct.Node* noundef %105)
  store %struct.Node* %106, %struct.Node** %3, align 8
  br label %129

107:                                              ; preds = %90, %87
  %108 = load i32, i32* %6, align 4
  %109 = icmp slt i32 %108, -1
  br i1 %109, label %110, label %127

110:                                              ; preds = %107
  %111 = load i32, i32* %5, align 4
  %112 = load %struct.Node*, %struct.Node** %4, align 8
  %113 = getelementptr inbounds %struct.Node, %struct.Node* %112, i32 0, i32 2
  %114 = load %struct.Node*, %struct.Node** %113, align 8
  %115 = getelementptr inbounds %struct.Node, %struct.Node* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp slt i32 %111, %116
  br i1 %117, label %118, label %127

118:                                              ; preds = %110
  %119 = load %struct.Node*, %struct.Node** %4, align 8
  %120 = getelementptr inbounds %struct.Node, %struct.Node* %119, i32 0, i32 2
  %121 = load %struct.Node*, %struct.Node** %120, align 8
  %122 = call %struct.Node* @rightRotate(%struct.Node* noundef %121)
  %123 = load %struct.Node*, %struct.Node** %4, align 8
  %124 = getelementptr inbounds %struct.Node, %struct.Node* %123, i32 0, i32 2
  store %struct.Node* %122, %struct.Node** %124, align 8
  %125 = load %struct.Node*, %struct.Node** %4, align 8
  %126 = call %struct.Node* @leftRotate(%struct.Node* noundef %125)
  store %struct.Node* %126, %struct.Node** %3, align 8
  br label %129

127:                                              ; preds = %110, %107
  %128 = load %struct.Node*, %struct.Node** %4, align 8
  store %struct.Node* %128, %struct.Node** %3, align 8
  br label %129

129:                                              ; preds = %127, %118, %98, %84, %70, %42, %9
  %130 = load %struct.Node*, %struct.Node** %3, align 8
  ret %struct.Node* %130
}

declare i32 @newNode(...) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
