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
  %20 = call i32 @max(i32 noundef %11, i32 noundef %19) #3
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
  %31 = icmp eq %struct.Node* %0, null
  %32 = select i1 %31, i32 0, i32 %21
  %33 = call i32 @max(i32 noundef %30, i32 noundef %32) #3
  %34 = add nsw i32 %33, 1
  %35 = getelementptr inbounds %struct.Node, %struct.Node* %3, i64 0, i32 3
  store i32 %34, i32* %35, align 8, !tbaa !5
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
  %20 = call i32 @max(i32 noundef %13, i32 noundef %19) #3
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
  %31 = icmp eq %struct.Node* %0, null
  %32 = select i1 %31, i32 0, i32 %21
  %33 = call i32 @max(i32 noundef %32, i32 noundef %30) #3
  %34 = add nsw i32 %33, 1
  %35 = getelementptr inbounds %struct.Node, %struct.Node* %3, i64 0, i32 3
  store i32 %34, i32* %35, align 8, !tbaa !5
  ret %struct.Node* %3
}

; Function Attrs: nounwind uwtable
define dso_local %struct.Node* @insert(%struct.Node* noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = icmp eq %struct.Node* %0, null
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = call i32 (i32, ...) bitcast (i32 (...)* @newNode to i32 (i32, ...)*)(i32 noundef %1) #3
  %6 = sext i32 %5 to i64
  %7 = inttoptr i64 %6 to %struct.Node*
  br label %259

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Node, %struct.Node* %0, i64 0, i32 0
  %10 = load i32, i32* %9, align 8, !tbaa !13
  %11 = icmp sgt i32 %10, %1
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.Node, %struct.Node* %0, i64 0, i32 1
  br label %18

14:                                               ; preds = %8
  %15 = icmp slt i32 %10, %1
  br i1 %15, label %16, label %259

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.Node, %struct.Node* %0, i64 0, i32 2
  br label %18

18:                                               ; preds = %16, %12
  %19 = phi %struct.Node** [ %17, %16 ], [ %13, %12 ]
  %20 = load %struct.Node*, %struct.Node** %19, align 8, !tbaa !14
  %21 = call %struct.Node* @insert(%struct.Node* noundef %20, i32 noundef %1)
  store %struct.Node* %21, %struct.Node** %19, align 8, !tbaa !14
  %22 = getelementptr inbounds %struct.Node, %struct.Node* %0, i64 0, i32 1
  %23 = load %struct.Node*, %struct.Node** %22, align 8, !tbaa !11
  %24 = icmp eq %struct.Node* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.Node, %struct.Node* %23, i64 0, i32 3
  %27 = load i32, i32* %26, align 8, !tbaa !5
  br label %28

28:                                               ; preds = %18, %25
  %29 = phi i32 [ %27, %25 ], [ 0, %18 ]
  %30 = getelementptr inbounds %struct.Node, %struct.Node* %0, i64 0, i32 2
  %31 = load %struct.Node*, %struct.Node** %30, align 8, !tbaa !12
  %32 = icmp eq %struct.Node* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.Node, %struct.Node* %31, i64 0, i32 3
  %35 = load i32, i32* %34, align 8, !tbaa !5
  br label %36

36:                                               ; preds = %28, %33
  %37 = phi i32 [ %35, %33 ], [ 0, %28 ]
  %38 = call i32 @max(i32 noundef %29, i32 noundef %37) #3
  %39 = add nsw i32 %38, 1
  %40 = getelementptr inbounds %struct.Node, %struct.Node* %0, i64 0, i32 3
  store i32 %39, i32* %40, align 8, !tbaa !5
  %41 = load %struct.Node*, %struct.Node** %22, align 8, !tbaa !11
  %42 = icmp eq %struct.Node* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.Node, %struct.Node* %41, i64 0, i32 3
  %45 = load i32, i32* %44, align 8, !tbaa !5
  br label %46

46:                                               ; preds = %43, %36
  %47 = phi i32 [ %45, %43 ], [ 0, %36 ]
  %48 = load %struct.Node*, %struct.Node** %30, align 8, !tbaa !12
  %49 = icmp eq %struct.Node* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.Node, %struct.Node* %48, i64 0, i32 3
  %52 = load i32, i32* %51, align 8, !tbaa !5
  br label %53

53:                                               ; preds = %50, %46
  %54 = phi i32 [ %52, %50 ], [ 0, %46 ]
  %55 = sub nsw i32 %47, %54
  %56 = icmp sgt i32 %55, 1
  br i1 %56, label %57, label %91

57:                                               ; preds = %53
  %58 = load %struct.Node*, %struct.Node** %22, align 8, !tbaa !11
  %59 = getelementptr inbounds %struct.Node, %struct.Node* %58, i64 0, i32 0
  %60 = load i32, i32* %59, align 8, !tbaa !13
  %61 = icmp sgt i32 %60, %1
  br i1 %61, label %62, label %91

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.Node, %struct.Node* %58, i64 0, i32 2
  %64 = load %struct.Node*, %struct.Node** %63, align 8, !tbaa !12
  store %struct.Node* %64, %struct.Node** %22, align 8, !tbaa !11
  %65 = icmp eq %struct.Node* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.Node, %struct.Node* %64, i64 0, i32 3
  %68 = load i32, i32* %67, align 8, !tbaa !5
  br label %69

69:                                               ; preds = %66, %62
  %70 = phi i32 [ %68, %66 ], [ 0, %62 ]
  %71 = load %struct.Node*, %struct.Node** %30, align 8, !tbaa !12
  %72 = icmp eq %struct.Node* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.Node, %struct.Node* %71, i64 0, i32 3
  %75 = load i32, i32* %74, align 8, !tbaa !5
  br label %76

76:                                               ; preds = %73, %69
  %77 = phi i32 [ %75, %73 ], [ 0, %69 ]
  %78 = call i32 @max(i32 noundef %70, i32 noundef %77) #3
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %40, align 8, !tbaa !5
  store %struct.Node* %0, %struct.Node** %63, align 8, !tbaa !12
  %80 = getelementptr inbounds %struct.Node, %struct.Node* %58, i64 0, i32 1
  %81 = load %struct.Node*, %struct.Node** %80, align 8, !tbaa !11
  %82 = icmp eq %struct.Node* %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %76
  %84 = getelementptr inbounds %struct.Node, %struct.Node* %81, i64 0, i32 3
  %85 = load i32, i32* %84, align 8, !tbaa !5
  br label %86

86:                                               ; preds = %76, %83
  %87 = phi i32 [ %85, %83 ], [ 0, %76 ]
  %88 = call i32 @max(i32 noundef %87, i32 noundef %79) #3
  %89 = add nsw i32 %88, 1
  %90 = getelementptr inbounds %struct.Node, %struct.Node* %58, i64 0, i32 3
  store i32 %89, i32* %90, align 8, !tbaa !5
  br label %259

91:                                               ; preds = %57, %53
  %92 = icmp slt i32 %55, -1
  br i1 %92, label %93, label %127

93:                                               ; preds = %91
  %94 = load %struct.Node*, %struct.Node** %30, align 8, !tbaa !12
  %95 = getelementptr inbounds %struct.Node, %struct.Node* %94, i64 0, i32 0
  %96 = load i32, i32* %95, align 8, !tbaa !13
  %97 = icmp slt i32 %96, %1
  br i1 %97, label %98, label %127

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.Node, %struct.Node* %94, i64 0, i32 1
  %100 = load %struct.Node*, %struct.Node** %99, align 8, !tbaa !11
  store %struct.Node* %100, %struct.Node** %30, align 8, !tbaa !12
  %101 = load %struct.Node*, %struct.Node** %22, align 8, !tbaa !11
  %102 = icmp eq %struct.Node* %101, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.Node, %struct.Node* %101, i64 0, i32 3
  %105 = load i32, i32* %104, align 8, !tbaa !5
  br label %106

106:                                              ; preds = %103, %98
  %107 = phi i32 [ %105, %103 ], [ 0, %98 ]
  %108 = icmp eq %struct.Node* %100, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.Node, %struct.Node* %100, i64 0, i32 3
  %111 = load i32, i32* %110, align 8, !tbaa !5
  br label %112

112:                                              ; preds = %109, %106
  %113 = phi i32 [ %111, %109 ], [ 0, %106 ]
  %114 = call i32 @max(i32 noundef %107, i32 noundef %113) #3
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %40, align 8, !tbaa !5
  store %struct.Node* %0, %struct.Node** %99, align 8, !tbaa !11
  %116 = getelementptr inbounds %struct.Node, %struct.Node* %94, i64 0, i32 2
  %117 = load %struct.Node*, %struct.Node** %116, align 8, !tbaa !12
  %118 = icmp eq %struct.Node* %117, null
  br i1 %118, label %122, label %119

119:                                              ; preds = %112
  %120 = getelementptr inbounds %struct.Node, %struct.Node* %117, i64 0, i32 3
  %121 = load i32, i32* %120, align 8, !tbaa !5
  br label %122

122:                                              ; preds = %112, %119
  %123 = phi i32 [ %121, %119 ], [ 0, %112 ]
  %124 = call i32 @max(i32 noundef %115, i32 noundef %123) #3
  %125 = add nsw i32 %124, 1
  %126 = getelementptr inbounds %struct.Node, %struct.Node* %94, i64 0, i32 3
  store i32 %125, i32* %126, align 8, !tbaa !5
  br label %259

127:                                              ; preds = %93, %91
  br i1 %56, label %128, label %193

128:                                              ; preds = %127
  %129 = load %struct.Node*, %struct.Node** %22, align 8, !tbaa !11
  %130 = getelementptr inbounds %struct.Node, %struct.Node* %129, i64 0, i32 0
  %131 = load i32, i32* %130, align 8, !tbaa !13
  %132 = icmp slt i32 %131, %1
  br i1 %132, label %133, label %193

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.Node, %struct.Node* %129, i64 0, i32 2
  %135 = load %struct.Node*, %struct.Node** %134, align 8, !tbaa !12
  %136 = getelementptr inbounds %struct.Node, %struct.Node* %135, i64 0, i32 1
  %137 = load %struct.Node*, %struct.Node** %136, align 8, !tbaa !11
  store %struct.Node* %137, %struct.Node** %134, align 8, !tbaa !12
  %138 = getelementptr inbounds %struct.Node, %struct.Node* %129, i64 0, i32 1
  %139 = load %struct.Node*, %struct.Node** %138, align 8, !tbaa !11
  %140 = icmp eq %struct.Node* %139, null
  br i1 %140, label %144, label %141

141:                                              ; preds = %133
  %142 = getelementptr inbounds %struct.Node, %struct.Node* %139, i64 0, i32 3
  %143 = load i32, i32* %142, align 8, !tbaa !5
  br label %144

144:                                              ; preds = %141, %133
  %145 = phi i32 [ %143, %141 ], [ 0, %133 ]
  %146 = icmp eq %struct.Node* %137, null
  br i1 %146, label %150, label %147

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct.Node, %struct.Node* %137, i64 0, i32 3
  %149 = load i32, i32* %148, align 8, !tbaa !5
  br label %150

150:                                              ; preds = %147, %144
  %151 = phi i32 [ %149, %147 ], [ 0, %144 ]
  %152 = call i32 @max(i32 noundef %145, i32 noundef %151) #3
  %153 = add nsw i32 %152, 1
  %154 = getelementptr inbounds %struct.Node, %struct.Node* %129, i64 0, i32 3
  store i32 %153, i32* %154, align 8, !tbaa !5
  store %struct.Node* %129, %struct.Node** %136, align 8, !tbaa !11
  %155 = getelementptr inbounds %struct.Node, %struct.Node* %135, i64 0, i32 2
  %156 = load %struct.Node*, %struct.Node** %155, align 8, !tbaa !12
  %157 = icmp eq %struct.Node* %156, null
  br i1 %157, label %161, label %158

158:                                              ; preds = %150
  %159 = getelementptr inbounds %struct.Node, %struct.Node* %156, i64 0, i32 3
  %160 = load i32, i32* %159, align 8, !tbaa !5
  br label %161

161:                                              ; preds = %150, %158
  %162 = phi i32 [ %160, %158 ], [ 0, %150 ]
  %163 = icmp eq %struct.Node* %129, null
  %164 = select i1 %163, i32 0, i32 %153
  %165 = call i32 @max(i32 noundef %164, i32 noundef %162) #3
  %166 = add nsw i32 %165, 1
  %167 = getelementptr inbounds %struct.Node, %struct.Node* %135, i64 0, i32 3
  store i32 %166, i32* %167, align 8, !tbaa !5
  store %struct.Node* %135, %struct.Node** %22, align 8, !tbaa !11
  %168 = load %struct.Node*, %struct.Node** %155, align 8, !tbaa !12
  store %struct.Node* %168, %struct.Node** %22, align 8, !tbaa !11
  %169 = icmp eq %struct.Node* %168, null
  br i1 %169, label %173, label %170

170:                                              ; preds = %161
  %171 = getelementptr inbounds %struct.Node, %struct.Node* %168, i64 0, i32 3
  %172 = load i32, i32* %171, align 8, !tbaa !5
  br label %173

173:                                              ; preds = %170, %161
  %174 = phi i32 [ %172, %170 ], [ 0, %161 ]
  %175 = load %struct.Node*, %struct.Node** %30, align 8, !tbaa !12
  %176 = icmp eq %struct.Node* %175, null
  br i1 %176, label %180, label %177

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.Node, %struct.Node* %175, i64 0, i32 3
  %179 = load i32, i32* %178, align 8, !tbaa !5
  br label %180

180:                                              ; preds = %177, %173
  %181 = phi i32 [ %179, %177 ], [ 0, %173 ]
  %182 = call i32 @max(i32 noundef %174, i32 noundef %181) #3
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %40, align 8, !tbaa !5
  store %struct.Node* %0, %struct.Node** %155, align 8, !tbaa !12
  %184 = load %struct.Node*, %struct.Node** %136, align 8, !tbaa !11
  %185 = icmp eq %struct.Node* %184, null
  br i1 %185, label %189, label %186

186:                                              ; preds = %180
  %187 = getelementptr inbounds %struct.Node, %struct.Node* %184, i64 0, i32 3
  %188 = load i32, i32* %187, align 8, !tbaa !5
  br label %189

189:                                              ; preds = %180, %186
  %190 = phi i32 [ %188, %186 ], [ 0, %180 ]
  %191 = call i32 @max(i32 noundef %190, i32 noundef %183) #3
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %167, align 8, !tbaa !5
  br label %259

193:                                              ; preds = %128, %127
  br i1 %92, label %194, label %259

194:                                              ; preds = %193
  %195 = load %struct.Node*, %struct.Node** %30, align 8, !tbaa !12
  %196 = getelementptr inbounds %struct.Node, %struct.Node* %195, i64 0, i32 0
  %197 = load i32, i32* %196, align 8, !tbaa !13
  %198 = icmp sgt i32 %197, %1
  br i1 %198, label %199, label %259

199:                                              ; preds = %194
  %200 = getelementptr inbounds %struct.Node, %struct.Node* %195, i64 0, i32 1
  %201 = load %struct.Node*, %struct.Node** %200, align 8, !tbaa !11
  %202 = getelementptr inbounds %struct.Node, %struct.Node* %201, i64 0, i32 2
  %203 = load %struct.Node*, %struct.Node** %202, align 8, !tbaa !12
  store %struct.Node* %203, %struct.Node** %200, align 8, !tbaa !11
  %204 = icmp eq %struct.Node* %203, null
  br i1 %204, label %208, label %205

205:                                              ; preds = %199
  %206 = getelementptr inbounds %struct.Node, %struct.Node* %203, i64 0, i32 3
  %207 = load i32, i32* %206, align 8, !tbaa !5
  br label %208

208:                                              ; preds = %205, %199
  %209 = phi i32 [ %207, %205 ], [ 0, %199 ]
  %210 = getelementptr inbounds %struct.Node, %struct.Node* %195, i64 0, i32 2
  %211 = load %struct.Node*, %struct.Node** %210, align 8, !tbaa !12
  %212 = icmp eq %struct.Node* %211, null
  br i1 %212, label %216, label %213

213:                                              ; preds = %208
  %214 = getelementptr inbounds %struct.Node, %struct.Node* %211, i64 0, i32 3
  %215 = load i32, i32* %214, align 8, !tbaa !5
  br label %216

216:                                              ; preds = %213, %208
  %217 = phi i32 [ %215, %213 ], [ 0, %208 ]
  %218 = call i32 @max(i32 noundef %209, i32 noundef %217) #3
  %219 = add nsw i32 %218, 1
  %220 = getelementptr inbounds %struct.Node, %struct.Node* %195, i64 0, i32 3
  store i32 %219, i32* %220, align 8, !tbaa !5
  store %struct.Node* %195, %struct.Node** %202, align 8, !tbaa !12
  %221 = getelementptr inbounds %struct.Node, %struct.Node* %201, i64 0, i32 1
  %222 = load %struct.Node*, %struct.Node** %221, align 8, !tbaa !11
  %223 = icmp eq %struct.Node* %222, null
  br i1 %223, label %227, label %224

224:                                              ; preds = %216
  %225 = getelementptr inbounds %struct.Node, %struct.Node* %222, i64 0, i32 3
  %226 = load i32, i32* %225, align 8, !tbaa !5
  br label %227

227:                                              ; preds = %216, %224
  %228 = phi i32 [ %226, %224 ], [ 0, %216 ]
  %229 = icmp eq %struct.Node* %195, null
  %230 = select i1 %229, i32 0, i32 %219
  %231 = call i32 @max(i32 noundef %228, i32 noundef %230) #3
  %232 = add nsw i32 %231, 1
  %233 = getelementptr inbounds %struct.Node, %struct.Node* %201, i64 0, i32 3
  store i32 %232, i32* %233, align 8, !tbaa !5
  store %struct.Node* %201, %struct.Node** %30, align 8, !tbaa !12
  %234 = load %struct.Node*, %struct.Node** %221, align 8, !tbaa !11
  store %struct.Node* %234, %struct.Node** %30, align 8, !tbaa !12
  %235 = load %struct.Node*, %struct.Node** %22, align 8, !tbaa !11
  %236 = icmp eq %struct.Node* %235, null
  br i1 %236, label %240, label %237

237:                                              ; preds = %227
  %238 = getelementptr inbounds %struct.Node, %struct.Node* %235, i64 0, i32 3
  %239 = load i32, i32* %238, align 8, !tbaa !5
  br label %240

240:                                              ; preds = %237, %227
  %241 = phi i32 [ %239, %237 ], [ 0, %227 ]
  %242 = icmp eq %struct.Node* %234, null
  br i1 %242, label %246, label %243

243:                                              ; preds = %240
  %244 = getelementptr inbounds %struct.Node, %struct.Node* %234, i64 0, i32 3
  %245 = load i32, i32* %244, align 8, !tbaa !5
  br label %246

246:                                              ; preds = %243, %240
  %247 = phi i32 [ %245, %243 ], [ 0, %240 ]
  %248 = call i32 @max(i32 noundef %241, i32 noundef %247) #3
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %40, align 8, !tbaa !5
  store %struct.Node* %0, %struct.Node** %221, align 8, !tbaa !11
  %250 = load %struct.Node*, %struct.Node** %202, align 8, !tbaa !12
  %251 = icmp eq %struct.Node* %250, null
  br i1 %251, label %255, label %252

252:                                              ; preds = %246
  %253 = getelementptr inbounds %struct.Node, %struct.Node* %250, i64 0, i32 3
  %254 = load i32, i32* %253, align 8, !tbaa !5
  br label %255

255:                                              ; preds = %246, %252
  %256 = phi i32 [ %254, %252 ], [ 0, %246 ]
  %257 = call i32 @max(i32 noundef %249, i32 noundef %256) #3
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %233, align 8, !tbaa !5
  br label %259

259:                                              ; preds = %86, %122, %189, %255, %194, %193, %14, %4
  %260 = phi %struct.Node* [ %7, %4 ], [ %0, %14 ], [ %58, %86 ], [ %94, %122 ], [ %135, %189 ], [ %201, %255 ], [ %0, %194 ], [ %0, %193 ]
  ret %struct.Node* %260
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
!14 = !{!10, !10, i64 0}
