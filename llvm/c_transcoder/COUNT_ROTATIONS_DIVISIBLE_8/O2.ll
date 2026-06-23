; ModuleID = 'benchmark/c_transcoder/COUNT_ROTATIONS_DIVISIBLE_8/COUNT_ROTATIONS_DIVISIBLE_8_processed.c'
source_filename = "benchmark/c_transcoder/COUNT_ROTATIONS_DIVISIBLE_8/COUNT_ROTATIONS_DIVISIBLE_8_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind readonly uwtable
define dso_local i32 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  %3 = trunc i64 %2 to i32
  switch i32 %3, label %4 [
    i32 1, label %20
    i32 2, label %25
  ]

4:                                                ; preds = %1
  %5 = add i32 %3, -2
  %6 = icmp sgt i32 %3, 2
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = load i8, i8* %0, align 1, !tbaa !5
  %9 = getelementptr inbounds i8, i8* %0, i64 1
  %10 = load i8, i8* %9, align 1, !tbaa !5
  br label %67

11:                                               ; preds = %4
  %12 = zext i32 %5 to i64
  %13 = load i8, i8* %0, align 1, !tbaa !5
  %14 = getelementptr inbounds i8, i8* %0, i64 1
  %15 = load i8, i8* %14, align 1, !tbaa !5
  %16 = and i64 %12, 1
  %17 = icmp eq i32 %5, 1
  br i1 %17, label %46, label %18

18:                                               ; preds = %11
  %19 = and i64 %12, 4294967294
  br label %100

20:                                               ; preds = %1
  %21 = load i8, i8* %0, align 1, !tbaa !5
  %22 = and i8 %21, 7
  %23 = icmp eq i8 %22, 0
  %24 = zext i1 %23 to i32
  br label %137

25:                                               ; preds = %1
  %26 = load i8, i8* %0, align 1, !tbaa !5
  %27 = zext i8 %26 to i32
  %28 = add nsw i32 %27, -48
  %29 = mul nsw i32 %28, 10
  %30 = getelementptr inbounds i8, i8* %0, i64 1
  %31 = load i8, i8* %30, align 1, !tbaa !5
  %32 = zext i8 %31 to i32
  %33 = add nsw i32 %32, -48
  %34 = add nsw i32 %29, %33
  %35 = mul nsw i32 %33, 10
  %36 = add nsw i32 %35, %28
  %37 = and i32 %34, 7
  %38 = icmp eq i32 %37, 0
  %39 = zext i1 %38 to i32
  %40 = and i32 %36, 7
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %38, i32 2, i32 1
  %43 = select i1 %41, i32 %42, i32 %39
  br label %137

44:                                               ; preds = %100
  %45 = add nuw i64 %103, 4
  br label %46

46:                                               ; preds = %44, %11
  %47 = phi i32 [ undef, %11 ], [ %134, %44 ]
  %48 = phi i8 [ %15, %11 ], [ %128, %44 ]
  %49 = phi i8 [ %13, %11 ], [ %113, %44 ]
  %50 = phi i64 [ 2, %11 ], [ %45, %44 ]
  %51 = phi i32 [ 0, %11 ], [ %134, %44 ]
  %52 = icmp eq i64 %16, 0
  br i1 %52, label %67, label %53

53:                                               ; preds = %46
  %54 = zext i8 %49 to i32
  %55 = mul nuw nsw i32 %54, 100
  %56 = zext i8 %48 to i32
  %57 = mul nuw nsw i32 %56, 10
  %58 = add nuw nsw i32 %57, %55
  %59 = getelementptr inbounds i8, i8* %0, i64 %50
  %60 = load i8, i8* %59, align 1, !tbaa !5
  %61 = zext i8 %60 to i32
  %62 = add nuw nsw i32 %58, %61
  %63 = and i32 %62, 7
  %64 = icmp eq i32 %63, 0
  %65 = zext i1 %64 to i32
  %66 = add nuw nsw i32 %51, %65
  br label %67

67:                                               ; preds = %53, %46, %7
  %68 = phi i8 [ %10, %7 ], [ %15, %46 ], [ %15, %53 ]
  %69 = phi i8 [ %8, %7 ], [ %13, %46 ], [ %13, %53 ]
  %70 = phi i32 [ 0, %7 ], [ %47, %46 ], [ %66, %53 ]
  %71 = shl i64 %2, 32
  %72 = add i64 %71, -4294967296
  %73 = ashr exact i64 %72, 32
  %74 = getelementptr inbounds i8, i8* %0, i64 %73
  %75 = load i8, i8* %74, align 1, !tbaa !5
  %76 = zext i8 %75 to i32
  %77 = mul nuw nsw i32 %76, 100
  %78 = zext i8 %69 to i32
  %79 = mul nuw nsw i32 %78, 10
  %80 = add nuw nsw i32 %79, %77
  %81 = zext i8 %68 to i32
  %82 = add nuw nsw i32 %80, %81
  %83 = and i32 %82, 7
  %84 = icmp eq i32 %83, 0
  %85 = zext i1 %84 to i32
  %86 = add nuw nsw i32 %70, %85
  %87 = sext i32 %5 to i64
  %88 = getelementptr inbounds i8, i8* %0, i64 %87
  %89 = load i8, i8* %88, align 1, !tbaa !5
  %90 = zext i8 %89 to i32
  %91 = mul nuw nsw i32 %90, 100
  %92 = mul nuw nsw i32 %76, 10
  %93 = zext i8 %69 to i32
  %94 = add nuw nsw i32 %92, %93
  %95 = add nuw nsw i32 %94, %91
  %96 = and i32 %95, 7
  %97 = icmp eq i32 %96, 0
  %98 = zext i1 %97 to i32
  %99 = add nuw nsw i32 %86, %98
  br label %137

100:                                              ; preds = %100, %18
  %101 = phi i8 [ %15, %18 ], [ %128, %100 ]
  %102 = phi i8 [ %13, %18 ], [ %113, %100 ]
  %103 = phi i64 [ 0, %18 ], [ %122, %100 ]
  %104 = phi i32 [ 0, %18 ], [ %134, %100 ]
  %105 = phi i64 [ 0, %18 ], [ %135, %100 ]
  %106 = zext i8 %102 to i32
  %107 = mul nuw nsw i32 %106, 100
  %108 = zext i8 %101 to i32
  %109 = mul nuw nsw i32 %108, 10
  %110 = add nuw nsw i32 %109, %107
  %111 = add nuw nsw i64 %103, 2
  %112 = getelementptr inbounds i8, i8* %0, i64 %111
  %113 = load i8, i8* %112, align 1, !tbaa !5
  %114 = zext i8 %113 to i32
  %115 = add nuw nsw i32 %110, %114
  %116 = and i32 %115, 7
  %117 = icmp eq i32 %116, 0
  %118 = zext i1 %117 to i32
  %119 = add nuw nsw i32 %104, %118
  %120 = zext i8 %101 to i32
  %121 = mul nuw nsw i32 %120, 100
  %122 = add nuw nsw i64 %103, 2
  %123 = zext i8 %113 to i32
  %124 = mul nuw nsw i32 %123, 10
  %125 = add nuw nsw i32 %124, %121
  %126 = add nuw i64 %103, 3
  %127 = getelementptr inbounds i8, i8* %0, i64 %126
  %128 = load i8, i8* %127, align 1, !tbaa !5
  %129 = zext i8 %128 to i32
  %130 = add nuw nsw i32 %125, %129
  %131 = and i32 %130, 7
  %132 = icmp eq i32 %131, 0
  %133 = zext i1 %132 to i32
  %134 = add nuw nsw i32 %119, %133
  %135 = add nuw i64 %105, 2
  %136 = icmp eq i64 %135, %19
  br i1 %136, label %44, label %100, !llvm.loop !8

137:                                              ; preds = %67, %25, %20
  %138 = phi i32 [ %24, %20 ], [ %43, %25 ], [ %99, %67 ]
  ret i32 %138
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #1

attributes #0 = { nofree nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
