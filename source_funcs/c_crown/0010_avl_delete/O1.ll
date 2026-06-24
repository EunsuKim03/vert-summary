; ModuleID = 'benchmark/c_crown/0010_avl_delete/delete_processed.c'
source_filename = "benchmark/c_crown/0010_avl_delete/delete_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Node = type { i32, %struct.Node*, %struct.Node*, i32 }

; Function Attrs: nounwind uwtable
define dso_local i32 @getBalance(%struct.Node* noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq %struct.Node* %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Node, %struct.Node* %0, i64 0, i32 1
  %5 = load %struct.Node*, %struct.Node** %4, align 8, !tbaa !5
  %6 = call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %5) #3
  %7 = getelementptr inbounds %struct.Node, %struct.Node* %0, i64 0, i32 2
  %8 = load %struct.Node*, %struct.Node** %7, align 8, !tbaa !11
  %9 = call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %8) #3
  %10 = sub nsw i32 %6, %9
  br label %11

11:                                               ; preds = %1, %3
  %12 = phi i32 [ %10, %3 ], [ 0, %1 ]
  ret i32 %12
}

declare i32 @height(...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.Node* @leftRotate(%struct.Node* noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Node, %struct.Node* %0, i64 0, i32 2
  %3 = load %struct.Node*, %struct.Node** %2, align 8, !tbaa !11
  %4 = getelementptr inbounds %struct.Node, %struct.Node* %3, i64 0, i32 1
  %5 = load %struct.Node*, %struct.Node** %4, align 8, !tbaa !5
  store %struct.Node* %5, %struct.Node** %2, align 8, !tbaa !11
  %6 = getelementptr inbounds %struct.Node, %struct.Node* %0, i64 0, i32 1
  %7 = load %struct.Node*, %struct.Node** %6, align 8, !tbaa !5
  %8 = call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %7) #3
  %9 = load %struct.Node*, %struct.Node** %2, align 8, !tbaa !11
  %10 = call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %9) #3
  %11 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %8, i32 noundef %10) #3
  %12 = add nsw i32 %11, 1
  %13 = getelementptr inbounds %struct.Node, %struct.Node* %0, i64 0, i32 3
  store i32 %12, i32* %13, align 8, !tbaa !12
  store %struct.Node* %0, %struct.Node** %4, align 8, !tbaa !5
  %14 = call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %0) #3
  %15 = getelementptr inbounds %struct.Node, %struct.Node* %3, i64 0, i32 2
  %16 = load %struct.Node*, %struct.Node** %15, align 8, !tbaa !11
  %17 = call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %16) #3
  %18 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %14, i32 noundef %17) #3
  %19 = add nsw i32 %18, 1
  %20 = getelementptr inbounds %struct.Node, %struct.Node* %3, i64 0, i32 3
  store i32 %19, i32* %20, align 8, !tbaa !12
  ret %struct.Node* %3
}

declare i32 @max(...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.Node* @rightRotate(%struct.Node* noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Node, %struct.Node* %0, i64 0, i32 1
  %3 = load %struct.Node*, %struct.Node** %2, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.Node, %struct.Node* %3, i64 0, i32 2
  %5 = load %struct.Node*, %struct.Node** %4, align 8, !tbaa !11
  store %struct.Node* %5, %struct.Node** %2, align 8, !tbaa !5
  %6 = call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %5) #3
  %7 = getelementptr inbounds %struct.Node, %struct.Node* %0, i64 0, i32 2
  %8 = load %struct.Node*, %struct.Node** %7, align 8, !tbaa !11
  %9 = call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %8) #3
  %10 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %6, i32 noundef %9) #3
  %11 = add nsw i32 %10, 1
  %12 = getelementptr inbounds %struct.Node, %struct.Node* %0, i64 0, i32 3
  store i32 %11, i32* %12, align 8, !tbaa !12
  store %struct.Node* %0, %struct.Node** %4, align 8, !tbaa !11
  %13 = getelementptr inbounds %struct.Node, %struct.Node* %3, i64 0, i32 1
  %14 = load %struct.Node*, %struct.Node** %13, align 8, !tbaa !5
  %15 = call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %14) #3
  %16 = load %struct.Node*, %struct.Node** %4, align 8, !tbaa !11
  %17 = call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %16) #3
  %18 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %15, i32 noundef %17) #3
  %19 = add nsw i32 %18, 1
  %20 = getelementptr inbounds %struct.Node, %struct.Node* %3, i64 0, i32 3
  store i32 %19, i32* %20, align 8, !tbaa !12
  ret %struct.Node* %3
}

; Function Attrs: nounwind uwtable
define dso_local %struct.Node* @deleteNode(%struct.Node* noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq %struct.Node* %0, null
  br i1 %3, label %180, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Node, %struct.Node* %0, i64 0, i32 0
  %6 = load i32, i32* %5, align 8, !tbaa !13
  %7 = icmp sgt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Node, %struct.Node* %0, i64 0, i32 1
  %10 = load %struct.Node*, %struct.Node** %9, align 8, !tbaa !5
  %11 = call %struct.Node* @deleteNode(%struct.Node* noundef %10, i32 noundef %1)
  store %struct.Node* %11, %struct.Node** %9, align 8, !tbaa !5
  br label %44

12:                                               ; preds = %4
  %13 = icmp slt i32 %6, %1
  br i1 %13, label %14, label %18

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.Node, %struct.Node* %0, i64 0, i32 2
  %16 = load %struct.Node*, %struct.Node** %15, align 8, !tbaa !11
  %17 = call %struct.Node* @deleteNode(%struct.Node* noundef %16, i32 noundef %1)
  store %struct.Node* %17, %struct.Node** %15, align 8, !tbaa !11
  br label %44

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.Node, %struct.Node* %0, i64 0, i32 1
  %20 = load %struct.Node*, %struct.Node** %19, align 8, !tbaa !5
  %21 = icmp eq %struct.Node* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.Node, %struct.Node* %0, i64 0, i32 2
  %24 = load %struct.Node*, %struct.Node** %23, align 8, !tbaa !11
  %25 = icmp eq %struct.Node* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  br i1 %21, label %27, label %30

27:                                               ; preds = %18, %26
  %28 = getelementptr inbounds %struct.Node, %struct.Node* %0, i64 0, i32 2
  %29 = load %struct.Node*, %struct.Node** %28, align 8, !tbaa !11
  br label %30

30:                                               ; preds = %26, %27
  %31 = phi %struct.Node* [ %29, %27 ], [ %20, %26 ]
  %32 = icmp eq %struct.Node* %31, null
  br i1 %32, label %44, label %33

33:                                               ; preds = %30
  %34 = bitcast %struct.Node* %31 to i8*
  call void @free(i8* noundef %34) #3
  br label %44

35:                                               ; preds = %22
  %36 = call i32 (%struct.Node*, ...) bitcast (i32 (...)* @minValueNode to i32 (%struct.Node*, ...)*)(%struct.Node* noundef nonnull %24) #3
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to %struct.Node*
  %39 = getelementptr inbounds %struct.Node, %struct.Node* %38, i64 0, i32 0
  %40 = load i32, i32* %39, align 8, !tbaa !13
  store i32 %40, i32* %5, align 8, !tbaa !13
  %41 = load %struct.Node*, %struct.Node** %23, align 8, !tbaa !11
  %42 = load i32, i32* %39, align 8, !tbaa !13
  %43 = call %struct.Node* @deleteNode(%struct.Node* noundef %41, i32 noundef %42)
  store %struct.Node* %43, %struct.Node** %23, align 8, !tbaa !11
  br label %44

44:                                               ; preds = %33, %30, %14, %35, %8
  %45 = phi %struct.Node* [ %0, %8 ], [ %0, %14 ], [ %0, %35 ], [ %0, %33 ], [ null, %30 ]
  %46 = icmp eq %struct.Node* %45, null
  br i1 %46, label %180, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.Node, %struct.Node* %45, i64 0, i32 1
  %49 = load %struct.Node*, %struct.Node** %48, align 8, !tbaa !5
  %50 = call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %49) #3
  %51 = getelementptr inbounds %struct.Node, %struct.Node* %45, i64 0, i32 2
  %52 = load %struct.Node*, %struct.Node** %51, align 8, !tbaa !11
  %53 = call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %52) #3
  %54 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %50, i32 noundef %53) #3
  %55 = add nsw i32 %54, 1
  %56 = getelementptr inbounds %struct.Node, %struct.Node* %45, i64 0, i32 3
  store i32 %55, i32* %56, align 8, !tbaa !12
  %57 = load %struct.Node*, %struct.Node** %48, align 8, !tbaa !5
  %58 = call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %57) #3
  %59 = load %struct.Node*, %struct.Node** %51, align 8, !tbaa !11
  %60 = call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %59) #3
  %61 = sub nsw i32 %58, %60
  %62 = icmp sgt i32 %61, 1
  br i1 %62, label %63, label %106

63:                                               ; preds = %47
  %64 = load %struct.Node*, %struct.Node** %48, align 8, !tbaa !5
  %65 = icmp eq %struct.Node* %64, null
  br i1 %65, label %74, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.Node, %struct.Node* %64, i64 0, i32 1
  %68 = load %struct.Node*, %struct.Node** %67, align 8, !tbaa !5
  %69 = call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %68) #3
  %70 = getelementptr inbounds %struct.Node, %struct.Node* %64, i64 0, i32 2
  %71 = load %struct.Node*, %struct.Node** %70, align 8, !tbaa !11
  %72 = call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %71) #3
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %91, label %74

74:                                               ; preds = %63, %66
  %75 = load %struct.Node*, %struct.Node** %48, align 8, !tbaa !5
  %76 = getelementptr inbounds %struct.Node, %struct.Node* %75, i64 0, i32 2
  %77 = load %struct.Node*, %struct.Node** %76, align 8, !tbaa !11
  store %struct.Node* %77, %struct.Node** %48, align 8, !tbaa !5
  %78 = call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %77) #3
  %79 = load %struct.Node*, %struct.Node** %51, align 8, !tbaa !11
  %80 = call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %79) #3
  %81 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %78, i32 noundef %80) #3
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %56, align 8, !tbaa !12
  store %struct.Node* %45, %struct.Node** %76, align 8, !tbaa !11
  %83 = getelementptr inbounds %struct.Node, %struct.Node* %75, i64 0, i32 1
  %84 = load %struct.Node*, %struct.Node** %83, align 8, !tbaa !5
  %85 = call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %84) #3
  %86 = load %struct.Node*, %struct.Node** %76, align 8, !tbaa !11
  %87 = call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %86) #3
  %88 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %85, i32 noundef %87) #3
  %89 = add nsw i32 %88, 1
  %90 = getelementptr inbounds %struct.Node, %struct.Node* %75, i64 0, i32 3
  store i32 %89, i32* %90, align 8, !tbaa !12
  br label %180

91:                                               ; preds = %66
  %92 = load %struct.Node*, %struct.Node** %48, align 8, !tbaa !5
  %93 = icmp eq %struct.Node* %92, null
  br i1 %93, label %106, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.Node, %struct.Node* %92, i64 0, i32 1
  %96 = load %struct.Node*, %struct.Node** %95, align 8, !tbaa !5
  %97 = call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %96) #3
  %98 = getelementptr inbounds %struct.Node, %struct.Node* %92, i64 0, i32 2
  %99 = load %struct.Node*, %struct.Node** %98, align 8, !tbaa !11
  %100 = call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %99) #3
  %101 = icmp slt i32 %97, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %94
  %103 = load %struct.Node*, %struct.Node** %48, align 8, !tbaa !5
  %104 = call %struct.Node* @leftRotate(%struct.Node* noundef %103)
  store %struct.Node* %104, %struct.Node** %48, align 8, !tbaa !5
  %105 = call %struct.Node* @rightRotate(%struct.Node* noundef nonnull %45)
  br label %180

106:                                              ; preds = %91, %47, %94
  %107 = icmp slt i32 %61, -1
  br i1 %107, label %108, label %180

108:                                              ; preds = %106
  %109 = load %struct.Node*, %struct.Node** %51, align 8, !tbaa !11
  %110 = icmp eq %struct.Node* %109, null
  br i1 %110, label %119, label %111

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.Node, %struct.Node* %109, i64 0, i32 1
  %113 = load %struct.Node*, %struct.Node** %112, align 8, !tbaa !5
  %114 = call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %113) #3
  %115 = getelementptr inbounds %struct.Node, %struct.Node* %109, i64 0, i32 2
  %116 = load %struct.Node*, %struct.Node** %115, align 8, !tbaa !11
  %117 = call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %116) #3
  %118 = icmp sgt i32 %114, %117
  br i1 %118, label %136, label %119

119:                                              ; preds = %108, %111
  %120 = load %struct.Node*, %struct.Node** %51, align 8, !tbaa !11
  %121 = getelementptr inbounds %struct.Node, %struct.Node* %120, i64 0, i32 1
  %122 = load %struct.Node*, %struct.Node** %121, align 8, !tbaa !5
  store %struct.Node* %122, %struct.Node** %51, align 8, !tbaa !11
  %123 = load %struct.Node*, %struct.Node** %48, align 8, !tbaa !5
  %124 = call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %123) #3
  %125 = load %struct.Node*, %struct.Node** %51, align 8, !tbaa !11
  %126 = call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %125) #3
  %127 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %124, i32 noundef %126) #3
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %56, align 8, !tbaa !12
  store %struct.Node* %45, %struct.Node** %121, align 8, !tbaa !5
  %129 = call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef nonnull %45) #3
  %130 = getelementptr inbounds %struct.Node, %struct.Node* %120, i64 0, i32 2
  %131 = load %struct.Node*, %struct.Node** %130, align 8, !tbaa !11
  %132 = call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %131) #3
  %133 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %129, i32 noundef %132) #3
  %134 = add nsw i32 %133, 1
  %135 = getelementptr inbounds %struct.Node, %struct.Node* %120, i64 0, i32 3
  store i32 %134, i32* %135, align 8, !tbaa !12
  br label %180

136:                                              ; preds = %111
  %137 = load %struct.Node*, %struct.Node** %51, align 8, !tbaa !11
  %138 = icmp eq %struct.Node* %137, null
  br i1 %138, label %180, label %139

139:                                              ; preds = %136
  %140 = getelementptr inbounds %struct.Node, %struct.Node* %137, i64 0, i32 1
  %141 = load %struct.Node*, %struct.Node** %140, align 8, !tbaa !5
  %142 = call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %141) #3
  %143 = getelementptr inbounds %struct.Node, %struct.Node* %137, i64 0, i32 2
  %144 = load %struct.Node*, %struct.Node** %143, align 8, !tbaa !11
  %145 = call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %144) #3
  %146 = icmp sgt i32 %142, %145
  br i1 %146, label %147, label %180

147:                                              ; preds = %139
  %148 = load %struct.Node*, %struct.Node** %51, align 8, !tbaa !11
  %149 = getelementptr inbounds %struct.Node, %struct.Node* %148, i64 0, i32 1
  %150 = load %struct.Node*, %struct.Node** %149, align 8, !tbaa !5
  %151 = getelementptr inbounds %struct.Node, %struct.Node* %150, i64 0, i32 2
  %152 = load %struct.Node*, %struct.Node** %151, align 8, !tbaa !11
  store %struct.Node* %152, %struct.Node** %149, align 8, !tbaa !5
  %153 = call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %152) #3
  %154 = getelementptr inbounds %struct.Node, %struct.Node* %148, i64 0, i32 2
  %155 = load %struct.Node*, %struct.Node** %154, align 8, !tbaa !11
  %156 = call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %155) #3
  %157 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %153, i32 noundef %156) #3
  %158 = add nsw i32 %157, 1
  %159 = getelementptr inbounds %struct.Node, %struct.Node* %148, i64 0, i32 3
  store i32 %158, i32* %159, align 8, !tbaa !12
  store %struct.Node* %148, %struct.Node** %151, align 8, !tbaa !11
  %160 = getelementptr inbounds %struct.Node, %struct.Node* %150, i64 0, i32 1
  %161 = load %struct.Node*, %struct.Node** %160, align 8, !tbaa !5
  %162 = call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %161) #3
  %163 = load %struct.Node*, %struct.Node** %151, align 8, !tbaa !11
  %164 = call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %163) #3
  %165 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %162, i32 noundef %164) #3
  %166 = add nsw i32 %165, 1
  %167 = getelementptr inbounds %struct.Node, %struct.Node* %150, i64 0, i32 3
  store i32 %166, i32* %167, align 8, !tbaa !12
  store %struct.Node* %150, %struct.Node** %51, align 8, !tbaa !11
  %168 = load %struct.Node*, %struct.Node** %160, align 8, !tbaa !5
  store %struct.Node* %168, %struct.Node** %51, align 8, !tbaa !11
  %169 = load %struct.Node*, %struct.Node** %48, align 8, !tbaa !5
  %170 = call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %169) #3
  %171 = load %struct.Node*, %struct.Node** %51, align 8, !tbaa !11
  %172 = call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %171) #3
  %173 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %170, i32 noundef %172) #3
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %56, align 8, !tbaa !12
  store %struct.Node* %45, %struct.Node** %160, align 8, !tbaa !5
  %175 = call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef nonnull %45) #3
  %176 = load %struct.Node*, %struct.Node** %151, align 8, !tbaa !11
  %177 = call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %176) #3
  %178 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %175, i32 noundef %177) #3
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %167, align 8, !tbaa !12
  br label %180

180:                                              ; preds = %136, %74, %102, %119, %147, %106, %139, %44, %2
  %181 = phi %struct.Node* [ null, %2 ], [ null, %44 ], [ %75, %74 ], [ %105, %102 ], [ %120, %119 ], [ %150, %147 ], [ %45, %106 ], [ %45, %139 ], [ %45, %136 ]
  ret %struct.Node* %181
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #2

declare i32 @minValueNode(...) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !10, i64 8}
!6 = !{!"Node", !7, i64 0, !10, i64 8, !10, i64 16, !7, i64 24}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!6, !10, i64 16}
!12 = !{!6, !7, i64 24}
!13 = !{!6, !7, i64 0}
