; ModuleID = 'benchmark/cpp_transcoder/MINIMUM_SUM_PRODUCT_TWO_ARRAYS/MINIMUM_SUM_PRODUCT_TWO_ARRAYS_processed.cpp'
source_filename = "benchmark/cpp_transcoder/MINIMUM_SUM_PRODUCT_TWO_ARRAYS/MINIMUM_SUM_PRODUCT_TWO_ARRAYS_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_MINIMUM_SUM_PRODUCT_TWO_ARRAYS_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPiS_ii(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %4
  %7 = mul i32 %3, -2
  %8 = shl nsw i32 %3, 1
  %9 = zext i32 %2 to i64
  br label %14

10:                                               ; preds = %49
  %11 = sub nsw i32 %24, %54
  br label %12

12:                                               ; preds = %10, %4
  %13 = phi i32 [ %11, %10 ], [ 0, %4 ]
  ret i32 %13

14:                                               ; preds = %6, %49
  %15 = phi i64 [ 0, %6 ], [ %55, %49 ]
  %16 = phi i32 [ 0, %6 ], [ %54, %49 ]
  %17 = phi i32 [ 0, %6 ], [ %24, %49 ]
  %18 = phi i32 [ undef, %6 ], [ %50, %49 ]
  %19 = getelementptr inbounds i32, i32* %0, i64 %15
  %20 = load i32, i32* %19, align 4, !tbaa !5
  %21 = getelementptr inbounds i32, i32* %1, i64 %15
  %22 = load i32, i32* %21, align 4, !tbaa !5
  %23 = mul nsw i32 %22, %20
  %24 = add nsw i32 %23, %17
  %25 = and i32 %23, %22
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %14
  %28 = add nsw i32 %20, %8
  %29 = mul nsw i32 %28, %22
  br label %49

30:                                               ; preds = %14
  %31 = icmp slt i32 %23, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %30
  %33 = icmp slt i32 %20, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %32
  %35 = add i32 %20, %7
  %36 = mul nsw i32 %35, %22
  br label %49

37:                                               ; preds = %30
  %38 = icmp eq i32 %23, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %37
  %40 = icmp slt i32 %20, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %39
  %42 = add nsw i32 %20, %8
  %43 = mul nsw i32 %42, %22
  br label %49

44:                                               ; preds = %39
  %45 = icmp eq i32 %20, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %44
  %47 = add i32 %20, %7
  %48 = mul nsw i32 %47, %22
  br label %49

49:                                               ; preds = %32, %37, %34, %44, %46, %41, %27
  %50 = phi i32 [ %29, %27 ], [ %36, %34 ], [ %43, %41 ], [ %48, %46 ], [ %18, %44 ], [ %18, %37 ], [ %18, %32 ]
  %51 = sub nsw i32 %23, %50
  %52 = tail call i32 @llvm.abs.i32(i32 %51, i1 true)
  %53 = icmp sgt i32 %52, %16
  %54 = select i1 %53, i32 %52, i32 %16
  %55 = add nuw nsw i64 %15, 1
  %56 = icmp eq i64 %55, %9
  br i1 %56, label %10, label %14, !llvm.loop !9
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_MINIMUM_SUM_PRODUCT_TWO_ARRAYS_processed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }

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
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
