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
  %6 = tail call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %5) #3
  %7 = getelementptr inbounds %struct.Node, %struct.Node* %0, i64 0, i32 2
  %8 = load %struct.Node*, %struct.Node** %7, align 8, !tbaa !11
  %9 = tail call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %8) #3
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
  %8 = tail call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %7) #3
  %9 = load %struct.Node*, %struct.Node** %2, align 8, !tbaa !11
  %10 = tail call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %9) #3
  %11 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %8, i32 noundef %10) #3
  %12 = add nsw i32 %11, 1
  %13 = getelementptr inbounds %struct.Node, %struct.Node* %0, i64 0, i32 3
  store i32 %12, i32* %13, align 8, !tbaa !12
  store %struct.Node* %0, %struct.Node** %4, align 8, !tbaa !5
  %14 = tail call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %0) #3
  %15 = getelementptr inbounds %struct.Node, %struct.Node* %3, i64 0, i32 2
  %16 = load %struct.Node*, %struct.Node** %15, align 8, !tbaa !11
  %17 = tail call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %16) #3
  %18 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %14, i32 noundef %17) #3
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
  %6 = tail call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %5) #3
  %7 = getelementptr inbounds %struct.Node, %struct.Node* %0, i64 0, i32 2
  %8 = load %struct.Node*, %struct.Node** %7, align 8, !tbaa !11
  %9 = tail call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %8) #3
  %10 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %6, i32 noundef %9) #3
  %11 = add nsw i32 %10, 1
  %12 = getelementptr inbounds %struct.Node, %struct.Node* %0, i64 0, i32 3
  store i32 %11, i32* %12, align 8, !tbaa !12
  store %struct.Node* %0, %struct.Node** %4, align 8, !tbaa !11
  %13 = getelementptr inbounds %struct.Node, %struct.Node* %3, i64 0, i32 1
  %14 = load %struct.Node*, %struct.Node** %13, align 8, !tbaa !5
  %15 = tail call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %14) #3
  %16 = load %struct.Node*, %struct.Node** %4, align 8, !tbaa !11
  %17 = tail call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %16) #3
  %18 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %15, i32 noundef %17) #3
  %19 = add nsw i32 %18, 1
  %20 = getelementptr inbounds %struct.Node, %struct.Node* %3, i64 0, i32 3
  store i32 %19, i32* %20, align 8, !tbaa !12
  ret %struct.Node* %3
}

; Function Attrs: nounwind uwtable
define dso_local %struct.Node* @deleteNode(%struct.Node* noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq %struct.Node* %0, null
  br i1 %3, label %172, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Node, %struct.Node* %0, i64 0, i32 0
  %6 = load i32, i32* %5, align 8, !tbaa !13
  %7 = icmp sgt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Node, %struct.Node* %0, i64 0, i32 1
  %10 = load %struct.Node*, %struct.Node** %9, align 8, !tbaa !5
  %11 = tail call %struct.Node* @deleteNode(%struct.Node* noundef %10, i32 noundef %1)
  store %struct.Node* %11, %struct.Node** %9, align 8, !tbaa !5
  br label %39

12:                                               ; preds = %4
  %13 = icmp slt i32 %6, %1
  br i1 %13, label %14, label %18

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.Node, %struct.Node* %0, i64 0, i32 2
  %16 = load %struct.Node*, %struct.Node** %15, align 8, !tbaa !11
  %17 = tail call %struct.Node* @deleteNode(%struct.Node* noundef %16, i32 noundef %1)
  store %struct.Node* %17, %struct.Node** %15, align 8, !tbaa !11
  br label %39

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.Node, %struct.Node* %0, i64 0, i32 1
  %20 = load %struct.Node*, %struct.Node** %19, align 8, !tbaa !5
  %21 = icmp eq %struct.Node* %20, null
  %22 = getelementptr inbounds %struct.Node, %struct.Node* %0, i64 0, i32 2
  %23 = load %struct.Node*, %struct.Node** %22, align 8, !tbaa !11
  %24 = icmp eq %struct.Node* %23, null
  br i1 %21, label %26, label %25

25:                                               ; preds = %18
  br i1 %24, label %27, label %30

26:                                               ; preds = %18
  br i1 %24, label %172, label %27

27:                                               ; preds = %25, %26
  %28 = phi %struct.Node* [ %23, %26 ], [ %20, %25 ]
  %29 = bitcast %struct.Node* %28 to i8*
  tail call void @free(i8* noundef %29) #3
  br label %39

30:                                               ; preds = %25
  %31 = tail call i32 (%struct.Node*, ...) bitcast (i32 (...)* @minValueNode to i32 (%struct.Node*, ...)*)(%struct.Node* noundef nonnull %23) #3
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to %struct.Node*
  %34 = getelementptr inbounds %struct.Node, %struct.Node* %33, i64 0, i32 0
  %35 = load i32, i32* %34, align 8, !tbaa !13
  store i32 %35, i32* %5, align 8, !tbaa !13
  %36 = load %struct.Node*, %struct.Node** %22, align 8, !tbaa !11
  %37 = load i32, i32* %34, align 8, !tbaa !13
  %38 = tail call %struct.Node* @deleteNode(%struct.Node* noundef %36, i32 noundef %37)
  store %struct.Node* %38, %struct.Node** %22, align 8, !tbaa !11
  br label %39

39:                                               ; preds = %8, %14, %30, %27
  %40 = getelementptr inbounds %struct.Node, %struct.Node* %0, i64 0, i32 1
  %41 = load %struct.Node*, %struct.Node** %40, align 8, !tbaa !5
  %42 = tail call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %41) #3
  %43 = getelementptr inbounds %struct.Node, %struct.Node* %0, i64 0, i32 2
  %44 = load %struct.Node*, %struct.Node** %43, align 8, !tbaa !11
  %45 = tail call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %44) #3
  %46 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %42, i32 noundef %45) #3
  %47 = add nsw i32 %46, 1
  %48 = getelementptr inbounds %struct.Node, %struct.Node* %0, i64 0, i32 3
  store i32 %47, i32* %48, align 8, !tbaa !12
  %49 = load %struct.Node*, %struct.Node** %40, align 8, !tbaa !5
  %50 = tail call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %49) #3
  %51 = load %struct.Node*, %struct.Node** %43, align 8, !tbaa !11
  %52 = tail call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %51) #3
  %53 = sub nsw i32 %50, %52
  %54 = icmp sgt i32 %53, 1
  br i1 %54, label %55, label %98

55:                                               ; preds = %39
  %56 = load %struct.Node*, %struct.Node** %40, align 8, !tbaa !5
  %57 = icmp eq %struct.Node* %56, null
  br i1 %57, label %67, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.Node, %struct.Node* %56, i64 0, i32 1
  %60 = load %struct.Node*, %struct.Node** %59, align 8, !tbaa !5
  %61 = tail call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %60) #3
  %62 = getelementptr inbounds %struct.Node, %struct.Node* %56, i64 0, i32 2
  %63 = load %struct.Node*, %struct.Node** %62, align 8, !tbaa !11
  %64 = tail call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %63) #3
  %65 = icmp slt i32 %61, %64
  %66 = load %struct.Node*, %struct.Node** %40, align 8, !tbaa !5
  br i1 %65, label %84, label %67

67:                                               ; preds = %58, %55
  %68 = phi %struct.Node* [ null, %55 ], [ %66, %58 ]
  %69 = getelementptr inbounds %struct.Node, %struct.Node* %68, i64 0, i32 2
  %70 = load %struct.Node*, %struct.Node** %69, align 8, !tbaa !11
  store %struct.Node* %70, %struct.Node** %40, align 8, !tbaa !5
  %71 = tail call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %70) #3
  %72 = load %struct.Node*, %struct.Node** %43, align 8, !tbaa !11
  %73 = tail call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %72) #3
  %74 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %71, i32 noundef %73) #3
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %48, align 8, !tbaa !12
  store %struct.Node* %0, %struct.Node** %69, align 8, !tbaa !11
  %76 = getelementptr inbounds %struct.Node, %struct.Node* %68, i64 0, i32 1
  %77 = load %struct.Node*, %struct.Node** %76, align 8, !tbaa !5
  %78 = tail call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %77) #3
  %79 = load %struct.Node*, %struct.Node** %69, align 8, !tbaa !11
  %80 = tail call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %79) #3
  %81 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %78, i32 noundef %80) #3
  %82 = add nsw i32 %81, 1
  %83 = getelementptr inbounds %struct.Node, %struct.Node* %68, i64 0, i32 3
  store i32 %82, i32* %83, align 8, !tbaa !12
  br label %172

84:                                               ; preds = %58
  %85 = icmp eq %struct.Node* %66, null
  br i1 %85, label %172, label %86

86:                                               ; preds = %84
  %87 = getelementptr inbounds %struct.Node, %struct.Node* %66, i64 0, i32 1
  %88 = load %struct.Node*, %struct.Node** %87, align 8, !tbaa !5
  %89 = tail call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %88) #3
  %90 = getelementptr inbounds %struct.Node, %struct.Node* %66, i64 0, i32 2
  %91 = load %struct.Node*, %struct.Node** %90, align 8, !tbaa !11
  %92 = tail call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %91) #3
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %172

94:                                               ; preds = %86
  %95 = load %struct.Node*, %struct.Node** %40, align 8, !tbaa !5
  %96 = tail call %struct.Node* @leftRotate(%struct.Node* noundef %95)
  store %struct.Node* %96, %struct.Node** %40, align 8, !tbaa !5
  %97 = tail call %struct.Node* @rightRotate(%struct.Node* noundef nonnull %0)
  br label %172

98:                                               ; preds = %39
  %99 = icmp slt i32 %53, -1
  br i1 %99, label %100, label %172

100:                                              ; preds = %98
  %101 = load %struct.Node*, %struct.Node** %43, align 8, !tbaa !11
  %102 = icmp eq %struct.Node* %101, null
  br i1 %102, label %112, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.Node, %struct.Node* %101, i64 0, i32 1
  %105 = load %struct.Node*, %struct.Node** %104, align 8, !tbaa !5
  %106 = tail call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %105) #3
  %107 = getelementptr inbounds %struct.Node, %struct.Node* %101, i64 0, i32 2
  %108 = load %struct.Node*, %struct.Node** %107, align 8, !tbaa !11
  %109 = tail call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %108) #3
  %110 = icmp sgt i32 %106, %109
  %111 = load %struct.Node*, %struct.Node** %43, align 8, !tbaa !11
  br i1 %110, label %129, label %112

112:                                              ; preds = %103, %100
  %113 = phi %struct.Node* [ null, %100 ], [ %111, %103 ]
  %114 = getelementptr inbounds %struct.Node, %struct.Node* %113, i64 0, i32 1
  %115 = load %struct.Node*, %struct.Node** %114, align 8, !tbaa !5
  store %struct.Node* %115, %struct.Node** %43, align 8, !tbaa !11
  %116 = load %struct.Node*, %struct.Node** %40, align 8, !tbaa !5
  %117 = tail call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %116) #3
  %118 = load %struct.Node*, %struct.Node** %43, align 8, !tbaa !11
  %119 = tail call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %118) #3
  %120 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %117, i32 noundef %119) #3
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %48, align 8, !tbaa !12
  store %struct.Node* %0, %struct.Node** %114, align 8, !tbaa !5
  %122 = tail call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef nonnull %0) #3
  %123 = getelementptr inbounds %struct.Node, %struct.Node* %113, i64 0, i32 2
  %124 = load %struct.Node*, %struct.Node** %123, align 8, !tbaa !11
  %125 = tail call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %124) #3
  %126 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %122, i32 noundef %125) #3
  %127 = add nsw i32 %126, 1
  %128 = getelementptr inbounds %struct.Node, %struct.Node* %113, i64 0, i32 3
  store i32 %127, i32* %128, align 8, !tbaa !12
  br label %172

129:                                              ; preds = %103
  %130 = icmp eq %struct.Node* %111, null
  br i1 %130, label %172, label %131

131:                                              ; preds = %129
  %132 = getelementptr inbounds %struct.Node, %struct.Node* %111, i64 0, i32 1
  %133 = load %struct.Node*, %struct.Node** %132, align 8, !tbaa !5
  %134 = tail call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %133) #3
  %135 = getelementptr inbounds %struct.Node, %struct.Node* %111, i64 0, i32 2
  %136 = load %struct.Node*, %struct.Node** %135, align 8, !tbaa !11
  %137 = tail call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %136) #3
  %138 = icmp sgt i32 %134, %137
  br i1 %138, label %139, label %172

139:                                              ; preds = %131
  %140 = load %struct.Node*, %struct.Node** %43, align 8, !tbaa !11
  %141 = getelementptr inbounds %struct.Node, %struct.Node* %140, i64 0, i32 1
  %142 = load %struct.Node*, %struct.Node** %141, align 8, !tbaa !5
  %143 = getelementptr inbounds %struct.Node, %struct.Node* %142, i64 0, i32 2
  %144 = load %struct.Node*, %struct.Node** %143, align 8, !tbaa !11
  store %struct.Node* %144, %struct.Node** %141, align 8, !tbaa !5
  %145 = tail call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %144) #3
  %146 = getelementptr inbounds %struct.Node, %struct.Node* %140, i64 0, i32 2
  %147 = load %struct.Node*, %struct.Node** %146, align 8, !tbaa !11
  %148 = tail call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %147) #3
  %149 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %145, i32 noundef %148) #3
  %150 = add nsw i32 %149, 1
  %151 = getelementptr inbounds %struct.Node, %struct.Node* %140, i64 0, i32 3
  store i32 %150, i32* %151, align 8, !tbaa !12
  store %struct.Node* %140, %struct.Node** %143, align 8, !tbaa !11
  %152 = getelementptr inbounds %struct.Node, %struct.Node* %142, i64 0, i32 1
  %153 = load %struct.Node*, %struct.Node** %152, align 8, !tbaa !5
  %154 = tail call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %153) #3
  %155 = load %struct.Node*, %struct.Node** %143, align 8, !tbaa !11
  %156 = tail call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %155) #3
  %157 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %154, i32 noundef %156) #3
  %158 = add nsw i32 %157, 1
  %159 = getelementptr inbounds %struct.Node, %struct.Node* %142, i64 0, i32 3
  store i32 %158, i32* %159, align 8, !tbaa !12
  %160 = load %struct.Node*, %struct.Node** %152, align 8, !tbaa !5
  store %struct.Node* %160, %struct.Node** %43, align 8, !tbaa !11
  %161 = load %struct.Node*, %struct.Node** %40, align 8, !tbaa !5
  %162 = tail call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %161) #3
  %163 = load %struct.Node*, %struct.Node** %43, align 8, !tbaa !11
  %164 = tail call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %163) #3
  %165 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %162, i32 noundef %164) #3
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %48, align 8, !tbaa !12
  store %struct.Node* %0, %struct.Node** %152, align 8, !tbaa !5
  %167 = tail call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef nonnull %0) #3
  %168 = load %struct.Node*, %struct.Node** %143, align 8, !tbaa !11
  %169 = tail call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %168) #3
  %170 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %167, i32 noundef %169) #3
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %159, align 8, !tbaa !12
  br label %172

172:                                              ; preds = %129, %84, %86, %26, %67, %94, %112, %139, %98, %131, %2
  %173 = phi %struct.Node* [ null, %2 ], [ %68, %67 ], [ %97, %94 ], [ %113, %112 ], [ %142, %139 ], [ %0, %98 ], [ %0, %131 ], [ null, %26 ], [ %0, %86 ], [ %0, %84 ], [ %0, %129 ]
  ret %struct.Node* %173
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
