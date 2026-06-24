; ModuleID = 'benchmark/cpp_transcoder/NUMBER_N_DIGIT_STEPPING_NUMBERS/NUMBER_N_DIGIT_STEPPING_NUMBERS_processed.cpp'
source_filename = "benchmark/cpp_transcoder/NUMBER_N_DIGIT_STEPPING_NUMBERS/NUMBER_N_DIGIT_STEPPING_NUMBERS_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_NUMBER_N_DIGIT_STEPPING_NUMBERS_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i64 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {
  %2 = add nsw i32 %0, 1
  %3 = zext i32 %2 to i64
  %4 = alloca [10 x i32], i64 %3, align 16
  %5 = icmp eq i32 %0, 1
  br i1 %5, label %58, label %11

6:                                                ; preds = %11
  %7 = icmp slt i32 %0, 2
  br i1 %7, label %25, label %8

8:                                                ; preds = %6
  %9 = add i32 %0, 1
  %10 = zext i32 %9 to i64
  br label %16

11:                                               ; preds = %1, %11
  %12 = phi i64 [ %14, %11 ], [ 0, %1 ]
  %13 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 1, i64 %12
  store i32 1, i32* %13, align 4, !tbaa !5
  %14 = add nuw nsw i64 %12, 1
  %15 = icmp eq i64 %14, 10
  br i1 %15, label %6, label %11, !llvm.loop !9

16:                                               ; preds = %8, %27
  %17 = phi i64 [ 2, %8 ], [ %28, %27 ]
  %18 = add nsw i64 %17, -1
  %19 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 %18, i64 8
  %20 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 %17, i64 9
  %21 = add nsw i64 %17, -1
  %22 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 %21, i64 1
  %23 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 %17, i64 0
  %24 = add nsw i64 %17, -1
  br label %30

25:                                               ; preds = %27, %6
  %26 = sext i32 %0 to i64
  br label %49

27:                                               ; preds = %46
  %28 = add nuw nsw i64 %17, 1
  %29 = icmp eq i64 %28, %10
  br i1 %29, label %25, label %16, !llvm.loop !12

30:                                               ; preds = %16, %46
  %31 = phi i64 [ 0, %16 ], [ %47, %46 ]
  %32 = trunc i64 %31 to i32
  switch i32 %32, label %37 [
    i32 0, label %33
    i32 9, label %35
  ]

33:                                               ; preds = %30
  %34 = load i32, i32* %22, align 4, !tbaa !5
  store i32 %34, i32* %23, align 8, !tbaa !5
  br label %46

35:                                               ; preds = %30
  %36 = load i32, i32* %19, align 8, !tbaa !5
  store i32 %36, i32* %20, align 4, !tbaa !5
  br label %46

37:                                               ; preds = %30
  %38 = add nsw i64 %31, -1
  %39 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 %24, i64 %38
  %40 = load i32, i32* %39, align 4, !tbaa !5
  %41 = add nuw nsw i64 %31, 1
  %42 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 %24, i64 %41
  %43 = load i32, i32* %42, align 4, !tbaa !5
  %44 = add nsw i32 %43, %40
  %45 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 %17, i64 %31
  store i32 %44, i32* %45, align 4, !tbaa !5
  br label %46

46:                                               ; preds = %33, %37, %35
  %47 = add nuw nsw i64 %31, 1
  %48 = icmp eq i64 %47, 10
  br i1 %48, label %27, label %30, !llvm.loop !13

49:                                               ; preds = %25, %49
  %50 = phi i64 [ 1, %25 ], [ %56, %49 ]
  %51 = phi i64 [ 0, %25 ], [ %55, %49 ]
  %52 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 %26, i64 %50
  %53 = load i32, i32* %52, align 4, !tbaa !5
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %51, %54
  %56 = add nuw nsw i64 %50, 1
  %57 = icmp eq i64 %56, 10
  br i1 %57, label %58, label %49, !llvm.loop !14

58:                                               ; preds = %49, %1
  %59 = phi i64 [ 10, %1 ], [ %55, %49 ]
  ret i64 %59
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_NUMBER_N_DIGIT_STEPPING_NUMBERS_processed.cpp() #4 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #5
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
