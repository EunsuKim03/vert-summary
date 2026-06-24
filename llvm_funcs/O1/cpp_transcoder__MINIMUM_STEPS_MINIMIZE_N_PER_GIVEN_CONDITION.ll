; ModuleID = 'benchmark/cpp_transcoder/MINIMUM_STEPS_MINIMIZE_N_PER_GIVEN_CONDITION/MINIMUM_STEPS_MINIMIZE_N_PER_GIVEN_CONDITION_processed.cpp'
source_filename = "benchmark/cpp_transcoder/MINIMUM_STEPS_MINIMIZE_N_PER_GIVEN_CONDITION/MINIMUM_STEPS_MINIMIZE_N_PER_GIVEN_CONDITION_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_MINIMUM_STEPS_MINIMIZE_N_PER_GIVEN_CONDITION_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {
  %2 = add nsw i32 %0, 1
  %3 = zext i32 %2 to i64
  %4 = alloca i32, i64 %3, align 16
  %5 = icmp slt i32 %0, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = add i32 %0, 1
  %8 = zext i32 %7 to i64
  br label %13

9:                                                ; preds = %13, %1
  %10 = icmp sgt i32 %0, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %9
  %12 = sext i32 %0 to i64
  br label %23

13:                                               ; preds = %6, %13
  %14 = phi i64 [ 0, %6 ], [ %18, %13 ]
  %15 = trunc i64 %14 to i32
  %16 = sub nsw i32 %0, %15
  %17 = getelementptr inbounds i32, i32* %4, i64 %14
  store i32 %16, i32* %17, align 4, !tbaa !5
  %18 = add nuw nsw i64 %14, 1
  %19 = icmp eq i64 %18, %8
  br i1 %19, label %9, label %13, !llvm.loop !9

20:                                               ; preds = %53, %9
  %21 = getelementptr inbounds i32, i32* %4, i64 1
  %22 = load i32, i32* %21, align 4, !tbaa !5
  ret i32 %22

23:                                               ; preds = %11, %53
  %24 = phi i64 [ %12, %11 ], [ %54, %53 ]
  %25 = and i64 %24, 1
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = getelementptr inbounds i32, i32* %4, i64 %24
  %29 = load i32, i32* %28, align 4, !tbaa !5
  %30 = add nsw i32 %29, 1
  %31 = trunc i64 %24 to i32
  %32 = sdiv i32 %31, 2
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %4, i64 %33
  %35 = load i32, i32* %34, align 4, !tbaa !5
  %36 = icmp slt i32 %35, %30
  %37 = select i1 %36, i32 %35, i32 %30
  store i32 %37, i32* %34, align 4, !tbaa !5
  br label %38

38:                                               ; preds = %27, %23
  %39 = trunc i64 %24 to i32
  %40 = srem i32 %39, 3
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  %43 = getelementptr inbounds i32, i32* %4, i64 %24
  %44 = load i32, i32* %43, align 4, !tbaa !5
  %45 = add nsw i32 %44, 1
  %46 = trunc i64 %24 to i32
  %47 = sdiv i32 %46, 3
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %4, i64 %48
  %50 = load i32, i32* %49, align 4, !tbaa !5
  %51 = icmp slt i32 %50, %45
  %52 = select i1 %51, i32 %50, i32 %45
  store i32 %52, i32* %49, align 4, !tbaa !5
  br label %53

53:                                               ; preds = %38, %42
  %54 = add nsw i64 %24, -1
  %55 = icmp sgt i64 %24, 1
  br i1 %55, label %23, label %20, !llvm.loop !12
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_MINIMUM_STEPS_MINIMIZE_N_PER_GIVEN_CONDITION_processed.cpp() #4 section ".text.startup" {
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
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
