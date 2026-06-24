; ModuleID = 'benchmark/cpp_transcoder/MAXIMUM_BINOMIAL_COEFFICIENT_TERM_VALUE/MAXIMUM_BINOMIAL_COEFFICIENT_TERM_VALUE_processed.cpp'
source_filename = "benchmark/cpp_transcoder/MAXIMUM_BINOMIAL_COEFFICIENT_TERM_VALUE/MAXIMUM_BINOMIAL_COEFFICIENT_TERM_VALUE_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_MAXIMUM_BINOMIAL_COEFFICIENT_TERM_VALUE_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {
  %2 = add i32 %0, 1
  %3 = zext i32 %2 to i64
  %4 = mul nuw i64 %3, %3
  %5 = alloca i32, i64 %4, align 16
  %6 = icmp slt i32 %0, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %1
  %8 = zext i32 %2 to i64
  br label %9

9:                                                ; preds = %7, %24
  %10 = phi i64 [ 0, %7 ], [ %25, %24 ]
  %11 = phi i64 [ 1, %7 ], [ %26, %24 ]
  %12 = add nsw i64 %10, -1
  %13 = mul nsw i64 %12, %3
  %14 = getelementptr inbounds i32, i32* %5, i64 %13
  %15 = mul nuw nsw i64 %10, %3
  %16 = getelementptr inbounds i32, i32* %5, i64 %15
  br label %28

17:                                               ; preds = %24, %1
  %18 = icmp slt i32 %0, 0
  br i1 %18, label %45, label %19

19:                                               ; preds = %17
  %20 = sext i32 %0 to i64
  %21 = mul nsw i64 %3, %20
  %22 = getelementptr inbounds i32, i32* %5, i64 %21
  %23 = zext i32 %2 to i64
  br label %47

24:                                               ; preds = %40
  %25 = add nuw nsw i64 %10, 1
  %26 = add nuw nsw i64 %11, 1
  %27 = icmp eq i64 %25, %8
  br i1 %27, label %17, label %9, !llvm.loop !5

28:                                               ; preds = %9, %40
  %29 = phi i64 [ 0, %9 ], [ %43, %40 ]
  %30 = icmp eq i64 %29, 0
  %31 = icmp eq i64 %29, %10
  %32 = select i1 %30, i1 true, i1 %31
  br i1 %32, label %40, label %33

33:                                               ; preds = %28
  %34 = add nsw i64 %29, -1
  %35 = getelementptr inbounds i32, i32* %14, i64 %34
  %36 = load i32, i32* %35, align 4, !tbaa !8
  %37 = getelementptr inbounds i32, i32* %14, i64 %29
  %38 = load i32, i32* %37, align 4, !tbaa !8
  %39 = add nsw i32 %38, %36
  br label %40

40:                                               ; preds = %28, %33
  %41 = phi i32 [ %39, %33 ], [ 1, %28 ]
  %42 = getelementptr inbounds i32, i32* %16, i64 %29
  store i32 %41, i32* %42, align 4, !tbaa !8
  %43 = add nuw nsw i64 %29, 1
  %44 = icmp eq i64 %43, %11
  br i1 %44, label %24, label %28, !llvm.loop !12

45:                                               ; preds = %47, %17
  %46 = phi i32 [ 0, %17 ], [ %53, %47 ]
  ret i32 %46

47:                                               ; preds = %19, %47
  %48 = phi i64 [ 0, %19 ], [ %54, %47 ]
  %49 = phi i32 [ 0, %19 ], [ %53, %47 ]
  %50 = getelementptr inbounds i32, i32* %22, i64 %48
  %51 = load i32, i32* %50, align 4, !tbaa !8
  %52 = icmp slt i32 %49, %51
  %53 = select i1 %52, i32 %51, i32 %49
  %54 = add nuw nsw i64 %48, 1
  %55 = icmp eq i64 %54, %23
  br i1 %55, label %45, label %47, !llvm.loop !13
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_MAXIMUM_BINOMIAL_COEFFICIENT_TERM_VALUE_processed.cpp() #4 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #5
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
!12 = distinct !{!12, !6, !7}
!13 = distinct !{!13, !6, !7}
