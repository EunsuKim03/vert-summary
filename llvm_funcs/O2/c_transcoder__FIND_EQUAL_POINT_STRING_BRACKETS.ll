; ModuleID = 'benchmark/c_transcoder/FIND_EQUAL_POINT_STRING_BRACKETS/FIND_EQUAL_POINT_STRING_BRACKETS_processed.c'
source_filename = "benchmark/c_transcoder/FIND_EQUAL_POINT_STRING_BRACKETS/FIND_EQUAL_POINT_STRING_BRACKETS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind readonly uwtable
define dso_local i32 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  %3 = trunc i64 %2 to i32
  %4 = add i64 %2, 1
  %5 = and i64 %4, 4294967295
  %6 = alloca i32, i64 %5, align 16
  %7 = alloca i32, i64 %5, align 16
  %8 = bitcast i32* %6 to i8*
  %9 = shl nuw nsw i64 %5, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %8, i8 0, i64 %9, i1 false)
  %10 = bitcast i32* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %10, i8 0, i64 %9, i1 false)
  store i32 0, i32* %6, align 16, !tbaa !5
  %11 = shl i64 %2, 32
  %12 = ashr exact i64 %11, 32
  %13 = getelementptr inbounds i32, i32* %7, i64 %12
  store i32 0, i32* %13, align 4, !tbaa !5
  %14 = load i8, i8* %0, align 1, !tbaa !9
  %15 = icmp eq i8 %14, 40
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = getelementptr inbounds i32, i32* %6, i64 1
  store i32 1, i32* %17, align 4, !tbaa !5
  br label %18

18:                                               ; preds = %16, %1
  %19 = add i64 %11, -4294967296
  %20 = ashr exact i64 %19, 32
  %21 = getelementptr inbounds i8, i8* %0, i64 %20
  %22 = load i8, i8* %21, align 1, !tbaa !9
  %23 = icmp eq i8 %22, 41
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = getelementptr inbounds i32, i32* %7, i64 %20
  store i32 1, i32* %25, align 4, !tbaa !5
  br label %26

26:                                               ; preds = %24, %18
  %27 = icmp sgt i32 %3, 1
  br i1 %27, label %28, label %89

28:                                               ; preds = %26
  %29 = and i64 %2, 4294967295
  %30 = getelementptr inbounds i32, i32* %6, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i64 %29, -1
  %33 = and i64 %32, 1
  %34 = icmp eq i64 %29, 2
  br i1 %34, label %37, label %35

35:                                               ; preds = %28
  %36 = and i64 %32, -2
  br label %69

37:                                               ; preds = %69, %28
  %38 = phi i32 [ %31, %28 ], [ %84, %69 ]
  %39 = phi i64 [ 1, %28 ], [ %85, %69 ]
  %40 = icmp eq i64 %33, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds i8, i8* %0, i64 %39
  %43 = load i8, i8* %42, align 1, !tbaa !9
  %44 = icmp eq i8 %43, 40
  %45 = zext i1 %44 to i32
  %46 = add nsw i32 %38, %45
  %47 = add nuw nsw i64 %39, 1
  %48 = getelementptr inbounds i32, i32* %6, i64 %47
  store i32 %46, i32* %48, align 4, !tbaa !5
  br label %49

49:                                               ; preds = %37, %41
  br i1 %27, label %50, label %89

50:                                               ; preds = %49
  %51 = add i64 %2, 4294967294
  %52 = and i64 %51, 4294967295
  %53 = and i64 %2, 1
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %50
  %56 = getelementptr inbounds i8, i8* %0, i64 %52
  %57 = load i8, i8* %56, align 1, !tbaa !9
  %58 = icmp eq i8 %57, 41
  %59 = add nuw nsw i64 %52, 1
  %60 = getelementptr inbounds i32, i32* %7, i64 %59
  %61 = load i32, i32* %60, align 4, !tbaa !5
  %62 = zext i1 %58 to i32
  %63 = add nsw i32 %61, %62
  %64 = getelementptr inbounds i32, i32* %7, i64 %52
  store i32 %63, i32* %64, align 4
  %65 = add nsw i64 %52, -1
  br label %66

66:                                               ; preds = %55, %50
  %67 = phi i64 [ %52, %50 ], [ %65, %55 ]
  %68 = icmp eq i64 %52, 0
  br i1 %68, label %89, label %93

69:                                               ; preds = %69, %35
  %70 = phi i32 [ %31, %35 ], [ %84, %69 ]
  %71 = phi i64 [ 1, %35 ], [ %85, %69 ]
  %72 = phi i64 [ 0, %35 ], [ %87, %69 ]
  %73 = getelementptr inbounds i8, i8* %0, i64 %71
  %74 = load i8, i8* %73, align 1, !tbaa !9
  %75 = icmp eq i8 %74, 40
  %76 = zext i1 %75 to i32
  %77 = add nsw i32 %70, %76
  %78 = add nuw nsw i64 %71, 1
  %79 = getelementptr inbounds i32, i32* %6, i64 %78
  store i32 %77, i32* %79, align 4, !tbaa !5
  %80 = getelementptr inbounds i8, i8* %0, i64 %78
  %81 = load i8, i8* %80, align 1, !tbaa !9
  %82 = icmp eq i8 %81, 40
  %83 = zext i1 %82 to i32
  %84 = add nsw i32 %77, %83
  %85 = add nuw nsw i64 %71, 2
  %86 = getelementptr inbounds i32, i32* %6, i64 %85
  store i32 %84, i32* %86, align 4, !tbaa !5
  %87 = add i64 %72, 2
  %88 = icmp eq i64 %87, %36
  br i1 %88, label %37, label %69, !llvm.loop !10

89:                                               ; preds = %66, %93, %26, %49
  %90 = getelementptr inbounds i32, i32* %6, i64 %12
  %91 = load i32, i32* %90, align 4, !tbaa !5
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %189, label %113

93:                                               ; preds = %66, %93
  %94 = phi i64 [ %111, %93 ], [ %67, %66 ]
  %95 = getelementptr inbounds i8, i8* %0, i64 %94
  %96 = load i8, i8* %95, align 1, !tbaa !9
  %97 = icmp eq i8 %96, 41
  %98 = add nuw nsw i64 %94, 1
  %99 = getelementptr inbounds i32, i32* %7, i64 %98
  %100 = load i32, i32* %99, align 4, !tbaa !5
  %101 = zext i1 %97 to i32
  %102 = add nsw i32 %100, %101
  %103 = getelementptr inbounds i32, i32* %7, i64 %94
  store i32 %102, i32* %103, align 4
  %104 = add nsw i64 %94, -1
  %105 = getelementptr inbounds i8, i8* %0, i64 %104
  %106 = load i8, i8* %105, align 1, !tbaa !9
  %107 = icmp eq i8 %106, 41
  %108 = zext i1 %107 to i32
  %109 = add nsw i32 %102, %108
  %110 = getelementptr inbounds i32, i32* %7, i64 %104
  store i32 %109, i32* %110, align 4
  %111 = add nsw i64 %94, -2
  %112 = icmp sgt i64 %94, 1
  br i1 %112, label %93, label %89, !llvm.loop !12

113:                                              ; preds = %89
  %114 = load i32, i32* %7, align 16, !tbaa !5
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %189, label %116

116:                                              ; preds = %113
  %117 = icmp slt i32 %3, 0
  br i1 %117, label %189, label %118

118:                                              ; preds = %116
  %119 = add i64 %2, 1
  %120 = and i64 %119, 4294967295
  %121 = load i32, i32* %6, align 16, !tbaa !5
  %122 = icmp ne i32 %121, %114
  %123 = sext i1 %122 to i32
  %124 = icmp eq i64 %120, 1
  br i1 %124, label %189, label %125, !llvm.loop !13

125:                                              ; preds = %118
  %126 = add nsw i64 %120, -1
  %127 = add nsw i64 %120, -2
  %128 = and i64 %126, 3
  %129 = icmp ult i64 %127, 3
  br i1 %129, label %170, label %130

130:                                              ; preds = %125
  %131 = and i64 %126, -4
  br label %132

132:                                              ; preds = %132, %130
  %133 = phi i64 [ 1, %130 ], [ %167, %132 ]
  %134 = phi i32 [ %123, %130 ], [ %166, %132 ]
  %135 = phi i64 [ 0, %130 ], [ %168, %132 ]
  %136 = getelementptr inbounds i32, i32* %7, i64 %133
  %137 = load i32, i32* %136, align 4, !tbaa !5
  %138 = getelementptr inbounds i32, i32* %6, i64 %133
  %139 = load i32, i32* %138, align 4, !tbaa !5
  %140 = icmp eq i32 %139, %137
  %141 = trunc i64 %133 to i32
  %142 = select i1 %140, i32 %141, i32 %134
  %143 = add nuw nsw i64 %133, 1
  %144 = getelementptr inbounds i32, i32* %7, i64 %143
  %145 = load i32, i32* %144, align 4, !tbaa !5
  %146 = getelementptr inbounds i32, i32* %6, i64 %143
  %147 = load i32, i32* %146, align 4, !tbaa !5
  %148 = icmp eq i32 %147, %145
  %149 = trunc i64 %143 to i32
  %150 = select i1 %148, i32 %149, i32 %142
  %151 = add nuw nsw i64 %133, 2
  %152 = getelementptr inbounds i32, i32* %7, i64 %151
  %153 = load i32, i32* %152, align 4, !tbaa !5
  %154 = getelementptr inbounds i32, i32* %6, i64 %151
  %155 = load i32, i32* %154, align 4, !tbaa !5
  %156 = icmp eq i32 %155, %153
  %157 = trunc i64 %151 to i32
  %158 = select i1 %156, i32 %157, i32 %150
  %159 = add nuw nsw i64 %133, 3
  %160 = getelementptr inbounds i32, i32* %7, i64 %159
  %161 = load i32, i32* %160, align 4, !tbaa !5
  %162 = getelementptr inbounds i32, i32* %6, i64 %159
  %163 = load i32, i32* %162, align 4, !tbaa !5
  %164 = icmp eq i32 %163, %161
  %165 = trunc i64 %159 to i32
  %166 = select i1 %164, i32 %165, i32 %158
  %167 = add nuw nsw i64 %133, 4
  %168 = add nuw nsw i64 %135, 4
  %169 = icmp eq i64 %168, %131
  br i1 %169, label %170, label %132, !llvm.loop !13

170:                                              ; preds = %132, %125
  %171 = phi i32 [ undef, %125 ], [ %166, %132 ]
  %172 = phi i64 [ 1, %125 ], [ %167, %132 ]
  %173 = phi i32 [ %123, %125 ], [ %166, %132 ]
  %174 = icmp eq i64 %128, 0
  br i1 %174, label %189, label %175

175:                                              ; preds = %170, %175
  %176 = phi i64 [ %186, %175 ], [ %172, %170 ]
  %177 = phi i32 [ %185, %175 ], [ %173, %170 ]
  %178 = phi i64 [ %187, %175 ], [ 0, %170 ]
  %179 = getelementptr inbounds i32, i32* %7, i64 %176
  %180 = load i32, i32* %179, align 4, !tbaa !5
  %181 = getelementptr inbounds i32, i32* %6, i64 %176
  %182 = load i32, i32* %181, align 4, !tbaa !5
  %183 = icmp eq i32 %182, %180
  %184 = trunc i64 %176 to i32
  %185 = select i1 %183, i32 %184, i32 %177
  %186 = add nuw nsw i64 %176, 1
  %187 = add i64 %178, 1
  %188 = icmp eq i64 %187, %128
  br i1 %188, label %189, label %175, !llvm.loop !14

189:                                              ; preds = %170, %175, %118, %116, %113, %89
  %190 = phi i32 [ %3, %89 ], [ 0, %113 ], [ -1, %116 ], [ %123, %118 ], [ %171, %170 ], [ %185, %175 ]
  ret i32 %190
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nofree nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.unroll.disable"}
