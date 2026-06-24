; ModuleID = 'benchmark/c_crown/0001_avl_rotate/rotate_processed.c'
source_filename = "benchmark/c_crown/0001_avl_rotate/rotate_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Node = type { i32, %struct.Node*, %struct.Node*, i32 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @height(%struct.Node* noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq %struct.Node* %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Node, %struct.Node* %0, i64 0, i32 3
  %5 = load i32, i32* %4, align 8, !tbaa !5
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i32 [ %5, %3 ], [ 0, %1 ]
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define dso_local %struct.Node* @rightRotate(%struct.Node* noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.Node, %struct.Node* %0, i64 0, i32 1
  %3 = load %struct.Node*, %struct.Node** %2, align 8, !tbaa !11
  %4 = getelementptr inbounds %struct.Node, %struct.Node* %3, i64 0, i32 2
  %5 = load %struct.Node*, %struct.Node** %4, align 8, !tbaa !12
  store %struct.Node* %5, %struct.Node** %2, align 8, !tbaa !11
  %6 = icmp eq %struct.Node* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.Node, %struct.Node* %5, i64 0, i32 3
  %9 = load i32, i32* %8, align 8, !tbaa !5
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi i32 [ %9, %7 ], [ 0, %1 ]
  %12 = getelementptr inbounds %struct.Node, %struct.Node* %0, i64 0, i32 2
  %13 = load %struct.Node*, %struct.Node** %12, align 8, !tbaa !12
  %14 = icmp eq %struct.Node* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.Node, %struct.Node* %13, i64 0, i32 3
  %17 = load i32, i32* %16, align 8, !tbaa !5
  br label %18

18:                                               ; preds = %10, %15
  %19 = phi i32 [ %17, %15 ], [ 0, %10 ]
  %20 = tail call i32 @max(i32 noundef %11, i32 noundef %19) #3
  %21 = add nsw i32 %20, 1
  %22 = getelementptr inbounds %struct.Node, %struct.Node* %0, i64 0, i32 3
  store i32 %21, i32* %22, align 8, !tbaa !5
  store %struct.Node* %0, %struct.Node** %4, align 8, !tbaa !12
  %23 = getelementptr inbounds %struct.Node, %struct.Node* %3, i64 0, i32 1
  %24 = load %struct.Node*, %struct.Node** %23, align 8, !tbaa !11
  %25 = icmp eq %struct.Node* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.Node, %struct.Node* %24, i64 0, i32 3
  %28 = load i32, i32* %27, align 8, !tbaa !5
  br label %29

29:                                               ; preds = %18, %26
  %30 = phi i32 [ %28, %26 ], [ 0, %18 ]
  %31 = tail call i32 @max(i32 noundef %30, i32 noundef %21) #3
  %32 = add nsw i32 %31, 1
  %33 = getelementptr inbounds %struct.Node, %struct.Node* %3, i64 0, i32 3
  store i32 %32, i32* %33, align 8, !tbaa !5
  ret %struct.Node* %3
}

declare i32 @max(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @getBalance(%struct.Node* noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq %struct.Node* %0, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Node, %struct.Node* %0, i64 0, i32 1
  %5 = load %struct.Node*, %struct.Node** %4, align 8, !tbaa !11
  %6 = icmp eq %struct.Node* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Node, %struct.Node* %5, i64 0, i32 3
  %9 = load i32, i32* %8, align 8, !tbaa !5
  br label %10

10:                                               ; preds = %3, %7
  %11 = phi i32 [ %9, %7 ], [ 0, %3 ]
  %12 = getelementptr inbounds %struct.Node, %struct.Node* %0, i64 0, i32 2
  %13 = load %struct.Node*, %struct.Node** %12, align 8, !tbaa !12
  %14 = icmp eq %struct.Node* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.Node, %struct.Node* %13, i64 0, i32 3
  %17 = load i32, i32* %16, align 8, !tbaa !5
  br label %18

18:                                               ; preds = %10, %15
  %19 = phi i32 [ %17, %15 ], [ 0, %10 ]
  %20 = sub nsw i32 %11, %19
  br label %21

21:                                               ; preds = %1, %18
  %22 = phi i32 [ %20, %18 ], [ 0, %1 ]
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define dso_local %struct.Node* @leftRotate(%struct.Node* noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.Node, %struct.Node* %0, i64 0, i32 2
  %3 = load %struct.Node*, %struct.Node** %2, align 8, !tbaa !12
  %4 = getelementptr inbounds %struct.Node, %struct.Node* %3, i64 0, i32 1
  %5 = load %struct.Node*, %struct.Node** %4, align 8, !tbaa !11
  store %struct.Node* %5, %struct.Node** %2, align 8, !tbaa !12
  %6 = getelementptr inbounds %struct.Node, %struct.Node* %0, i64 0, i32 1
  %7 = load %struct.Node*, %struct.Node** %6, align 8, !tbaa !11
  %8 = icmp eq %struct.Node* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.Node, %struct.Node* %7, i64 0, i32 3
  %11 = load i32, i32* %10, align 8, !tbaa !5
  br label %12

12:                                               ; preds = %1, %9
  %13 = phi i32 [ %11, %9 ], [ 0, %1 ]
  %14 = icmp eq %struct.Node* %5, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.Node, %struct.Node* %5, i64 0, i32 3
  %17 = load i32, i32* %16, align 8, !tbaa !5
  br label %18

18:                                               ; preds = %12, %15
  %19 = phi i32 [ %17, %15 ], [ 0, %12 ]
  %20 = tail call i32 @max(i32 noundef %13, i32 noundef %19) #3
  %21 = add nsw i32 %20, 1
  %22 = getelementptr inbounds %struct.Node, %struct.Node* %0, i64 0, i32 3
  store i32 %21, i32* %22, align 8, !tbaa !5
  store %struct.Node* %0, %struct.Node** %4, align 8, !tbaa !11
  %23 = getelementptr inbounds %struct.Node, %struct.Node* %3, i64 0, i32 2
  %24 = load %struct.Node*, %struct.Node** %23, align 8, !tbaa !12
  %25 = icmp eq %struct.Node* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.Node, %struct.Node* %24, i64 0, i32 3
  %28 = load i32, i32* %27, align 8, !tbaa !5
  br label %29

29:                                               ; preds = %18, %26
  %30 = phi i32 [ %28, %26 ], [ 0, %18 ]
  %31 = tail call i32 @max(i32 noundef %21, i32 noundef %30) #3
  %32 = add nsw i32 %31, 1
  %33 = getelementptr inbounds %struct.Node, %struct.Node* %3, i64 0, i32 3
  store i32 %32, i32* %33, align 8, !tbaa !5
  ret %struct.Node* %3
}

; Function Attrs: nounwind uwtable
define dso_local %struct.Node* @insert(%struct.Node* noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = icmp eq %struct.Node* %0, null
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = tail call i32 (i32, ...) bitcast (i32 (...)* @newNode to i32 (i32, ...)*)(i32 noundef %1) #3
  %6 = sext i32 %5 to i64
  %7 = inttoptr i64 %6 to %struct.Node*
  br label %244

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Node, %struct.Node* %0, i64 0, i32 0
  %10 = load i32, i32* %9, align 8, !tbaa !13
  %11 = icmp sgt i32 %10, %1
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.Node, %struct.Node* %0, i64 0, i32 1
  %14 = load %struct.Node*, %struct.Node** %13, align 8, !tbaa !11
  %15 = tail call %struct.Node* @insert(%struct.Node* noundef %14, i32 noundef %1)
  store %struct.Node* %15, %struct.Node** %13, align 8, !tbaa !11
  br label %24

16:                                               ; preds = %8
  %17 = icmp slt i32 %10, %1
  br i1 %17, label %18, label %244

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.Node, %struct.Node* %0, i64 0, i32 2
  %20 = load %struct.Node*, %struct.Node** %19, align 8, !tbaa !12
  %21 = tail call %struct.Node* @insert(%struct.Node* noundef %20, i32 noundef %1)
  store %struct.Node* %21, %struct.Node** %19, align 8, !tbaa !12
  %22 = getelementptr inbounds %struct.Node, %struct.Node* %0, i64 0, i32 1
  %23 = load %struct.Node*, %struct.Node** %22, align 8, !tbaa !11
  br label %24

24:                                               ; preds = %18, %12
  %25 = phi %struct.Node* [ %23, %18 ], [ %15, %12 ]
  %26 = getelementptr inbounds %struct.Node, %struct.Node* %0, i64 0, i32 1
  %27 = icmp eq %struct.Node* %25, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.Node, %struct.Node* %25, i64 0, i32 3
  %30 = load i32, i32* %29, align 8, !tbaa !5
  br label %31

31:                                               ; preds = %24, %28
  %32 = phi i32 [ %30, %28 ], [ 0, %24 ]
  %33 = getelementptr inbounds %struct.Node, %struct.Node* %0, i64 0, i32 2
  %34 = load %struct.Node*, %struct.Node** %33, align 8, !tbaa !12
  %35 = icmp eq %struct.Node* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.Node, %struct.Node* %34, i64 0, i32 3
  %38 = load i32, i32* %37, align 8, !tbaa !5
  br label %39

39:                                               ; preds = %36, %31
  %40 = phi i32 [ %38, %36 ], [ 0, %31 ]
  %41 = tail call i32 @max(i32 noundef %32, i32 noundef %40) #3
  %42 = add nsw i32 %41, 1
  %43 = getelementptr inbounds %struct.Node, %struct.Node* %0, i64 0, i32 3
  store i32 %42, i32* %43, align 8, !tbaa !5
  %44 = load %struct.Node*, %struct.Node** %26, align 8, !tbaa !11
  %45 = icmp eq %struct.Node* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.Node, %struct.Node* %44, i64 0, i32 3
  %48 = load i32, i32* %47, align 8, !tbaa !5
  br label %49

49:                                               ; preds = %46, %39
  %50 = phi i32 [ %48, %46 ], [ 0, %39 ]
  %51 = load %struct.Node*, %struct.Node** %33, align 8, !tbaa !12
  %52 = icmp eq %struct.Node* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.Node, %struct.Node* %51, i64 0, i32 3
  %55 = load i32, i32* %54, align 8, !tbaa !5
  br label %56

56:                                               ; preds = %49, %53
  %57 = phi i32 [ %55, %53 ], [ 0, %49 ]
  %58 = sub nsw i32 %50, %57
  %59 = icmp sgt i32 %58, 1
  br i1 %59, label %60, label %91

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.Node, %struct.Node* %44, i64 0, i32 0
  %62 = load i32, i32* %61, align 8, !tbaa !13
  %63 = icmp sgt i32 %62, %1
  br i1 %63, label %64, label %124

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.Node, %struct.Node* %44, i64 0, i32 2
  %66 = load %struct.Node*, %struct.Node** %65, align 8, !tbaa !12
  store %struct.Node* %66, %struct.Node** %26, align 8, !tbaa !11
  %67 = icmp eq %struct.Node* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.Node, %struct.Node* %66, i64 0, i32 3
  %70 = load i32, i32* %69, align 8, !tbaa !5
  br label %71

71:                                               ; preds = %68, %64
  %72 = phi i32 [ %70, %68 ], [ 0, %64 ]
  br i1 %52, label %76, label %73

73:                                               ; preds = %71
  %74 = getelementptr inbounds %struct.Node, %struct.Node* %51, i64 0, i32 3
  %75 = load i32, i32* %74, align 8, !tbaa !5
  br label %76

76:                                               ; preds = %73, %71
  %77 = phi i32 [ %75, %73 ], [ 0, %71 ]
  %78 = tail call i32 @max(i32 noundef %72, i32 noundef %77) #3
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %43, align 8, !tbaa !5
  store %struct.Node* %0, %struct.Node** %65, align 8, !tbaa !12
  %80 = getelementptr inbounds %struct.Node, %struct.Node* %44, i64 0, i32 1
  %81 = load %struct.Node*, %struct.Node** %80, align 8, !tbaa !11
  %82 = icmp eq %struct.Node* %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %76
  %84 = getelementptr inbounds %struct.Node, %struct.Node* %81, i64 0, i32 3
  %85 = load i32, i32* %84, align 8, !tbaa !5
  br label %86

86:                                               ; preds = %76, %83
  %87 = phi i32 [ %85, %83 ], [ 0, %76 ]
  %88 = tail call i32 @max(i32 noundef %87, i32 noundef %79) #3
  %89 = add nsw i32 %88, 1
  %90 = getelementptr inbounds %struct.Node, %struct.Node* %44, i64 0, i32 3
  store i32 %89, i32* %90, align 8, !tbaa !5
  br label %244

91:                                               ; preds = %56
  %92 = icmp slt i32 %58, -1
  br i1 %92, label %93, label %244

93:                                               ; preds = %91
  %94 = getelementptr inbounds %struct.Node, %struct.Node* %51, i64 0, i32 0
  %95 = load i32, i32* %94, align 8, !tbaa !13
  %96 = icmp slt i32 %95, %1
  br i1 %96, label %97, label %184

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.Node, %struct.Node* %51, i64 0, i32 1
  %99 = load %struct.Node*, %struct.Node** %98, align 8, !tbaa !11
  store %struct.Node* %99, %struct.Node** %33, align 8, !tbaa !12
  br i1 %45, label %103, label %100

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.Node, %struct.Node* %44, i64 0, i32 3
  %102 = load i32, i32* %101, align 8, !tbaa !5
  br label %103

103:                                              ; preds = %100, %97
  %104 = phi i32 [ %102, %100 ], [ 0, %97 ]
  %105 = icmp eq %struct.Node* %99, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.Node, %struct.Node* %99, i64 0, i32 3
  %108 = load i32, i32* %107, align 8, !tbaa !5
  br label %109

109:                                              ; preds = %106, %103
  %110 = phi i32 [ %108, %106 ], [ 0, %103 ]
  %111 = tail call i32 @max(i32 noundef %104, i32 noundef %110) #3
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %43, align 8, !tbaa !5
  store %struct.Node* %0, %struct.Node** %98, align 8, !tbaa !11
  %113 = getelementptr inbounds %struct.Node, %struct.Node* %51, i64 0, i32 2
  %114 = load %struct.Node*, %struct.Node** %113, align 8, !tbaa !12
  %115 = icmp eq %struct.Node* %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %109
  %117 = getelementptr inbounds %struct.Node, %struct.Node* %114, i64 0, i32 3
  %118 = load i32, i32* %117, align 8, !tbaa !5
  br label %119

119:                                              ; preds = %109, %116
  %120 = phi i32 [ %118, %116 ], [ 0, %109 ]
  %121 = tail call i32 @max(i32 noundef %112, i32 noundef %120) #3
  %122 = add nsw i32 %121, 1
  %123 = getelementptr inbounds %struct.Node, %struct.Node* %51, i64 0, i32 3
  store i32 %122, i32* %123, align 8, !tbaa !5
  br label %244

124:                                              ; preds = %60
  %125 = icmp slt i32 %62, %1
  br i1 %125, label %126, label %244

126:                                              ; preds = %124
  %127 = getelementptr inbounds %struct.Node, %struct.Node* %44, i64 0, i32 2
  %128 = load %struct.Node*, %struct.Node** %127, align 8, !tbaa !12
  %129 = getelementptr inbounds %struct.Node, %struct.Node* %128, i64 0, i32 1
  %130 = load %struct.Node*, %struct.Node** %129, align 8, !tbaa !11
  store %struct.Node* %130, %struct.Node** %127, align 8, !tbaa !12
  %131 = getelementptr inbounds %struct.Node, %struct.Node* %44, i64 0, i32 1
  %132 = load %struct.Node*, %struct.Node** %131, align 8, !tbaa !11
  %133 = icmp eq %struct.Node* %132, null
  br i1 %133, label %137, label %134

134:                                              ; preds = %126
  %135 = getelementptr inbounds %struct.Node, %struct.Node* %132, i64 0, i32 3
  %136 = load i32, i32* %135, align 8, !tbaa !5
  br label %137

137:                                              ; preds = %134, %126
  %138 = phi i32 [ %136, %134 ], [ 0, %126 ]
  %139 = icmp eq %struct.Node* %130, null
  br i1 %139, label %143, label %140

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct.Node, %struct.Node* %130, i64 0, i32 3
  %142 = load i32, i32* %141, align 8, !tbaa !5
  br label %143

143:                                              ; preds = %140, %137
  %144 = phi i32 [ %142, %140 ], [ 0, %137 ]
  %145 = tail call i32 @max(i32 noundef %138, i32 noundef %144) #3
  %146 = add nsw i32 %145, 1
  %147 = getelementptr inbounds %struct.Node, %struct.Node* %44, i64 0, i32 3
  store i32 %146, i32* %147, align 8, !tbaa !5
  store %struct.Node* %44, %struct.Node** %129, align 8, !tbaa !11
  %148 = getelementptr inbounds %struct.Node, %struct.Node* %128, i64 0, i32 2
  %149 = load %struct.Node*, %struct.Node** %148, align 8, !tbaa !12
  %150 = icmp eq %struct.Node* %149, null
  br i1 %150, label %154, label %151

151:                                              ; preds = %143
  %152 = getelementptr inbounds %struct.Node, %struct.Node* %149, i64 0, i32 3
  %153 = load i32, i32* %152, align 8, !tbaa !5
  br label %154

154:                                              ; preds = %143, %151
  %155 = phi i32 [ %153, %151 ], [ 0, %143 ]
  %156 = tail call i32 @max(i32 noundef %146, i32 noundef %155) #3
  %157 = add nsw i32 %156, 1
  %158 = getelementptr inbounds %struct.Node, %struct.Node* %128, i64 0, i32 3
  store i32 %157, i32* %158, align 8, !tbaa !5
  %159 = load %struct.Node*, %struct.Node** %148, align 8, !tbaa !12
  store %struct.Node* %159, %struct.Node** %26, align 8, !tbaa !11
  %160 = icmp eq %struct.Node* %159, null
  br i1 %160, label %164, label %161

161:                                              ; preds = %154
  %162 = getelementptr inbounds %struct.Node, %struct.Node* %159, i64 0, i32 3
  %163 = load i32, i32* %162, align 8, !tbaa !5
  br label %164

164:                                              ; preds = %161, %154
  %165 = phi i32 [ %163, %161 ], [ 0, %154 ]
  %166 = load %struct.Node*, %struct.Node** %33, align 8, !tbaa !12
  %167 = icmp eq %struct.Node* %166, null
  br i1 %167, label %171, label %168

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.Node, %struct.Node* %166, i64 0, i32 3
  %170 = load i32, i32* %169, align 8, !tbaa !5
  br label %171

171:                                              ; preds = %168, %164
  %172 = phi i32 [ %170, %168 ], [ 0, %164 ]
  %173 = tail call i32 @max(i32 noundef %165, i32 noundef %172) #3
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %43, align 8, !tbaa !5
  store %struct.Node* %0, %struct.Node** %148, align 8, !tbaa !12
  %175 = load %struct.Node*, %struct.Node** %129, align 8, !tbaa !11
  %176 = icmp eq %struct.Node* %175, null
  br i1 %176, label %180, label %177

177:                                              ; preds = %171
  %178 = getelementptr inbounds %struct.Node, %struct.Node* %175, i64 0, i32 3
  %179 = load i32, i32* %178, align 8, !tbaa !5
  br label %180

180:                                              ; preds = %171, %177
  %181 = phi i32 [ %179, %177 ], [ 0, %171 ]
  %182 = tail call i32 @max(i32 noundef %181, i32 noundef %174) #3
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %158, align 8, !tbaa !5
  br label %244

184:                                              ; preds = %93
  %185 = icmp sgt i32 %95, %1
  br i1 %185, label %186, label %244

186:                                              ; preds = %184
  %187 = getelementptr inbounds %struct.Node, %struct.Node* %51, i64 0, i32 1
  %188 = load %struct.Node*, %struct.Node** %187, align 8, !tbaa !11
  %189 = getelementptr inbounds %struct.Node, %struct.Node* %188, i64 0, i32 2
  %190 = load %struct.Node*, %struct.Node** %189, align 8, !tbaa !12
  store %struct.Node* %190, %struct.Node** %187, align 8, !tbaa !11
  %191 = icmp eq %struct.Node* %190, null
  br i1 %191, label %195, label %192

192:                                              ; preds = %186
  %193 = getelementptr inbounds %struct.Node, %struct.Node* %190, i64 0, i32 3
  %194 = load i32, i32* %193, align 8, !tbaa !5
  br label %195

195:                                              ; preds = %192, %186
  %196 = phi i32 [ %194, %192 ], [ 0, %186 ]
  %197 = getelementptr inbounds %struct.Node, %struct.Node* %51, i64 0, i32 2
  %198 = load %struct.Node*, %struct.Node** %197, align 8, !tbaa !12
  %199 = icmp eq %struct.Node* %198, null
  br i1 %199, label %203, label %200

200:                                              ; preds = %195
  %201 = getelementptr inbounds %struct.Node, %struct.Node* %198, i64 0, i32 3
  %202 = load i32, i32* %201, align 8, !tbaa !5
  br label %203

203:                                              ; preds = %200, %195
  %204 = phi i32 [ %202, %200 ], [ 0, %195 ]
  %205 = tail call i32 @max(i32 noundef %196, i32 noundef %204) #3
  %206 = add nsw i32 %205, 1
  %207 = getelementptr inbounds %struct.Node, %struct.Node* %51, i64 0, i32 3
  store i32 %206, i32* %207, align 8, !tbaa !5
  store %struct.Node* %51, %struct.Node** %189, align 8, !tbaa !12
  %208 = getelementptr inbounds %struct.Node, %struct.Node* %188, i64 0, i32 1
  %209 = load %struct.Node*, %struct.Node** %208, align 8, !tbaa !11
  %210 = icmp eq %struct.Node* %209, null
  br i1 %210, label %214, label %211

211:                                              ; preds = %203
  %212 = getelementptr inbounds %struct.Node, %struct.Node* %209, i64 0, i32 3
  %213 = load i32, i32* %212, align 8, !tbaa !5
  br label %214

214:                                              ; preds = %203, %211
  %215 = phi i32 [ %213, %211 ], [ 0, %203 ]
  %216 = tail call i32 @max(i32 noundef %215, i32 noundef %206) #3
  %217 = add nsw i32 %216, 1
  %218 = getelementptr inbounds %struct.Node, %struct.Node* %188, i64 0, i32 3
  store i32 %217, i32* %218, align 8, !tbaa !5
  %219 = load %struct.Node*, %struct.Node** %208, align 8, !tbaa !11
  store %struct.Node* %219, %struct.Node** %33, align 8, !tbaa !12
  %220 = load %struct.Node*, %struct.Node** %26, align 8, !tbaa !11
  %221 = icmp eq %struct.Node* %220, null
  br i1 %221, label %225, label %222

222:                                              ; preds = %214
  %223 = getelementptr inbounds %struct.Node, %struct.Node* %220, i64 0, i32 3
  %224 = load i32, i32* %223, align 8, !tbaa !5
  br label %225

225:                                              ; preds = %222, %214
  %226 = phi i32 [ %224, %222 ], [ 0, %214 ]
  %227 = icmp eq %struct.Node* %219, null
  br i1 %227, label %231, label %228

228:                                              ; preds = %225
  %229 = getelementptr inbounds %struct.Node, %struct.Node* %219, i64 0, i32 3
  %230 = load i32, i32* %229, align 8, !tbaa !5
  br label %231

231:                                              ; preds = %228, %225
  %232 = phi i32 [ %230, %228 ], [ 0, %225 ]
  %233 = tail call i32 @max(i32 noundef %226, i32 noundef %232) #3
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %43, align 8, !tbaa !5
  store %struct.Node* %0, %struct.Node** %208, align 8, !tbaa !11
  %235 = load %struct.Node*, %struct.Node** %189, align 8, !tbaa !12
  %236 = icmp eq %struct.Node* %235, null
  br i1 %236, label %240, label %237

237:                                              ; preds = %231
  %238 = getelementptr inbounds %struct.Node, %struct.Node* %235, i64 0, i32 3
  %239 = load i32, i32* %238, align 8, !tbaa !5
  br label %240

240:                                              ; preds = %231, %237
  %241 = phi i32 [ %239, %237 ], [ 0, %231 ]
  %242 = tail call i32 @max(i32 noundef %234, i32 noundef %241) #3
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %218, align 8, !tbaa !5
  br label %244

244:                                              ; preds = %124, %91, %86, %119, %180, %240, %184, %16, %4
  %245 = phi %struct.Node* [ %7, %4 ], [ %0, %16 ], [ %44, %86 ], [ %51, %119 ], [ %128, %180 ], [ %188, %240 ], [ %0, %184 ], [ %0, %91 ], [ %0, %124 ]
  ret %struct.Node* %245
}

declare i32 @newNode(...) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !7, i64 24}
!6 = !{!"Node", !7, i64 0, !10, i64 8, !10, i64 16, !7, i64 24}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!6, !10, i64 8}
!12 = !{!6, !10, i64 16}
!13 = !{!6, !7, i64 0}
