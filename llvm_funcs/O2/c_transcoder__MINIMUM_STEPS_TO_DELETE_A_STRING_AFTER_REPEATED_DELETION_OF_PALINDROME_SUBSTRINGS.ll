; ModuleID = 'benchmark/c_transcoder/MINIMUM_STEPS_TO_DELETE_A_STRING_AFTER_REPEATED_DELETION_OF_PALINDROME_SUBSTRINGS/MINIMUM_STEPS_TO_DELETE_A_STRING_AFTER_REPEATED_DELETION_OF_PALINDROME_SUBSTRINGS_processed.c'
source_filename = "benchmark/c_transcoder/MINIMUM_STEPS_TO_DELETE_A_STRING_AFTER_REPEATED_DELETION_OF_PALINDROME_SUBSTRINGS/MINIMUM_STEPS_TO_DELETE_A_STRING_AFTER_REPEATED_DELETION_OF_PALINDROME_SUBSTRINGS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  %3 = trunc i64 %2 to i32
  %4 = add i64 %2, 1
  %5 = and i64 %4, 4294967295
  %6 = mul nuw i64 %5, %5
  %7 = alloca i32, i64 %6, align 16
  %8 = icmp slt i32 %3, 0
  br i1 %8, label %69, label %9

9:                                                ; preds = %1
  %10 = shl nuw nsw i64 %5, 2
  %11 = add nsw i64 %5, -1
  %12 = and i64 %4, 7
  %13 = icmp ult i64 %11, 7
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = sub nsw i64 %5, %12
  br label %32

16:                                               ; preds = %32, %9
  %17 = phi i64 [ 0, %9 ], [ %66, %32 ]
  %18 = icmp eq i64 %12, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %16, %19
  %20 = phi i64 [ %25, %19 ], [ %17, %16 ]
  %21 = phi i64 [ %26, %19 ], [ 0, %16 ]
  %22 = mul nuw nsw i64 %5, %20
  %23 = getelementptr i32, i32* %7, i64 %22
  %24 = bitcast i32* %23 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %24, i8 0, i64 %10, i1 false), !tbaa !5
  %25 = add nuw nsw i64 %20, 1
  %26 = add i64 %21, 1
  %27 = icmp eq i64 %26, %12
  br i1 %27, label %28, label %19, !llvm.loop !9

28:                                               ; preds = %19, %16
  %29 = icmp slt i32 %3, 1
  br i1 %29, label %69, label %30

30:                                               ; preds = %28
  %31 = and i64 %2, 4294967295
  br label %75

32:                                               ; preds = %32, %14
  %33 = phi i64 [ 0, %14 ], [ %66, %32 ]
  %34 = phi i64 [ 0, %14 ], [ %67, %32 ]
  %35 = mul nuw nsw i64 %5, %33
  %36 = getelementptr i32, i32* %7, i64 %35
  %37 = bitcast i32* %36 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %37, i8 0, i64 %10, i1 false), !tbaa !5
  %38 = or i64 %33, 1
  %39 = mul nuw nsw i64 %5, %38
  %40 = getelementptr i32, i32* %7, i64 %39
  %41 = bitcast i32* %40 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %41, i8 0, i64 %10, i1 false), !tbaa !5
  %42 = or i64 %33, 2
  %43 = mul nuw nsw i64 %5, %42
  %44 = getelementptr i32, i32* %7, i64 %43
  %45 = bitcast i32* %44 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %45, i8 0, i64 %10, i1 false), !tbaa !5
  %46 = or i64 %33, 3
  %47 = mul nuw nsw i64 %5, %46
  %48 = getelementptr i32, i32* %7, i64 %47
  %49 = bitcast i32* %48 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %49, i8 0, i64 %10, i1 false), !tbaa !5
  %50 = or i64 %33, 4
  %51 = mul nuw nsw i64 %5, %50
  %52 = getelementptr i32, i32* %7, i64 %51
  %53 = bitcast i32* %52 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %53, i8 0, i64 %10, i1 false), !tbaa !5
  %54 = or i64 %33, 5
  %55 = mul nuw nsw i64 %5, %54
  %56 = getelementptr i32, i32* %7, i64 %55
  %57 = bitcast i32* %56 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %57, i8 0, i64 %10, i1 false), !tbaa !5
  %58 = or i64 %33, 6
  %59 = mul nuw nsw i64 %5, %58
  %60 = getelementptr i32, i32* %7, i64 %59
  %61 = bitcast i32* %60 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %61, i8 0, i64 %10, i1 false), !tbaa !5
  %62 = or i64 %33, 7
  %63 = mul nuw nsw i64 %5, %62
  %64 = getelementptr i32, i32* %7, i64 %63
  %65 = bitcast i32* %64 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %65, i8 0, i64 %10, i1 false), !tbaa !5
  %66 = add nuw nsw i64 %33, 8
  %67 = add i64 %34, 8
  %68 = icmp eq i64 %67, %15
  br i1 %68, label %16, label %32, !llvm.loop !11

69:                                               ; preds = %81, %1, %28
  %70 = shl i64 %2, 32
  %71 = add i64 %70, -4294967296
  %72 = ashr exact i64 %71, 32
  %73 = getelementptr inbounds i32, i32* %7, i64 %72
  %74 = load i32, i32* %73, align 4, !tbaa !5
  ret i32 %74

75:                                               ; preds = %81, %30
  %76 = phi i32 [ %3, %30 ], [ %84, %81 ]
  %77 = phi i64 [ 0, %30 ], [ %83, %81 ]
  %78 = phi i32 [ 1, %30 ], [ %82, %81 ]
  %79 = icmp eq i32 %78, 1
  %80 = zext i32 %76 to i64
  br label %86

81:                                               ; preds = %153
  %82 = add nuw nsw i32 %78, 1
  %83 = add nuw nsw i64 %77, 1
  %84 = add i32 %76, -1
  %85 = icmp eq i64 %83, %31
  br i1 %85, label %69, label %75, !llvm.loop !13

86:                                               ; preds = %75, %153
  %87 = phi i64 [ 0, %75 ], [ %154, %153 ]
  %88 = phi i64 [ %77, %75 ], [ %155, %153 ]
  %89 = phi i32 [ %78, %75 ], [ %157, %153 ]
  %90 = phi i32 [ 2, %75 ], [ %156, %153 ]
  %91 = sext i32 %90 to i64
  br i1 %79, label %92, label %97

92:                                               ; preds = %86
  %93 = mul nuw nsw i64 %5, %87
  %94 = getelementptr inbounds i32, i32* %7, i64 %93
  %95 = getelementptr inbounds i32, i32* %94, i64 %88
  store i32 1, i32* %95, align 4, !tbaa !5
  %96 = add nuw nsw i64 %87, 1
  br label %153

97:                                               ; preds = %86
  %98 = add nuw nsw i64 %87, 1
  %99 = mul nuw nsw i64 %5, %98
  %100 = getelementptr inbounds i32, i32* %7, i64 %99
  %101 = getelementptr inbounds i32, i32* %100, i64 %88
  %102 = load i32, i32* %101, align 4, !tbaa !5
  %103 = add nsw i32 %102, 1
  %104 = mul nuw nsw i64 %5, %87
  %105 = getelementptr inbounds i32, i32* %7, i64 %104
  %106 = getelementptr inbounds i32, i32* %105, i64 %88
  store i32 %103, i32* %106, align 4, !tbaa !5
  %107 = getelementptr inbounds i8, i8* %0, i64 %87
  %108 = load i8, i8* %107, align 1, !tbaa !14
  %109 = getelementptr inbounds i8, i8* %0, i64 %98
  %110 = load i8, i8* %109, align 1, !tbaa !14
  %111 = icmp eq i8 %108, %110
  %112 = add nuw nsw i64 %87, 2
  br i1 %111, label %113, label %120

113:                                              ; preds = %97
  %114 = mul nuw nsw i64 %5, %112
  %115 = getelementptr inbounds i32, i32* %7, i64 %114
  %116 = getelementptr inbounds i32, i32* %115, i64 %88
  %117 = load i32, i32* %116, align 4, !tbaa !5
  %118 = add nsw i32 %117, 1
  %119 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %118, i32 noundef %103) #4
  store i32 %119, i32* %106, align 4, !tbaa !5
  br label %120

120:                                              ; preds = %97, %113
  %121 = phi i32 [ %119, %113 ], [ %103, %97 ]
  %122 = shl i64 %112, 32
  %123 = ashr exact i64 %122, 32
  %124 = icmp sgt i64 %123, %88
  br i1 %124, label %153, label %125

125:                                              ; preds = %120
  %126 = getelementptr inbounds i32, i32* %7, i64 %88
  br label %127

127:                                              ; preds = %125, %148
  %128 = phi i32 [ %121, %125 ], [ %150, %148 ]
  %129 = phi i64 [ %91, %125 ], [ %149, %148 ]
  %130 = load i8, i8* %107, align 1, !tbaa !14
  %131 = and i64 %129, 4294967295
  %132 = getelementptr inbounds i8, i8* %0, i64 %131
  %133 = load i8, i8* %132, align 1, !tbaa !14
  %134 = icmp eq i8 %130, %133
  br i1 %134, label %137, label %135

135:                                              ; preds = %127
  %136 = add nsw i64 %129, 1
  br label %148

137:                                              ; preds = %127
  %138 = add nsw i64 %129, -1
  %139 = getelementptr inbounds i32, i32* %100, i64 %138
  %140 = load i32, i32* %139, align 4, !tbaa !5
  %141 = add nsw i64 %129, 1
  %142 = and i64 %141, 4294967295
  %143 = mul nuw nsw i64 %5, %142
  %144 = getelementptr inbounds i32, i32* %126, i64 %143
  %145 = load i32, i32* %144, align 4, !tbaa !5
  %146 = add nsw i32 %145, %140
  %147 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %146, i32 noundef %128) #4
  store i32 %147, i32* %106, align 4, !tbaa !5
  br label %148

148:                                              ; preds = %135, %137
  %149 = phi i64 [ %136, %135 ], [ %141, %137 ]
  %150 = phi i32 [ %128, %135 ], [ %147, %137 ]
  %151 = trunc i64 %149 to i32
  %152 = icmp eq i32 %89, %151
  br i1 %152, label %153, label %127, !llvm.loop !15

153:                                              ; preds = %148, %120, %92
  %154 = phi i64 [ %98, %120 ], [ %96, %92 ], [ %98, %148 ]
  %155 = add nuw nsw i64 %88, 1
  %156 = add nuw i32 %90, 1
  %157 = add nuw i32 %89, 1
  %158 = icmp eq i64 %154, %80
  br i1 %158, label %81, label %86, !llvm.loop !16
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #1

declare i32 @min(...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind }

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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = !{!7, !7, i64 0}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
