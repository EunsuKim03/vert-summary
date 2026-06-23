; ModuleID = 'benchmark/cpp_transcoder/COUNT_OFDIFFERENT_WAYS_EXPRESS_N_SUM_1_3_4/COUNT_OFDIFFERENT_WAYS_EXPRESS_N_SUM_1_3_4_processed.cpp'
source_filename = "benchmark/cpp_transcoder/COUNT_OFDIFFERENT_WAYS_EXPRESS_N_SUM_1_3_4/COUNT_OFDIFFERENT_WAYS_EXPRESS_N_SUM_1_3_4_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_COUNT_OFDIFFERENT_WAYS_EXPRESS_N_SUM_1_3_4_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {
  %2 = add i32 %0, 1
  %3 = zext i32 %2 to i64
  %4 = alloca i32, i64 %3, align 16
  %5 = bitcast i32* %4 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 2>, <4 x i32>* %5, align 16, !tbaa !5
  %6 = icmp slt i32 %0, 4
  br i1 %6, label %25, label %7

7:                                                ; preds = %1
  %8 = and i64 %3, 1
  %9 = icmp eq i32 %2, 5
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = add nsw i64 %3, -4
  %12 = and i64 %11, -2
  br label %29

13:                                               ; preds = %29, %7
  %14 = phi i32 [ 1, %7 ], [ %43, %29 ]
  %15 = phi i32 [ 2, %7 ], [ %45, %29 ]
  %16 = phi i64 [ 4, %7 ], [ %47, %29 ]
  %17 = icmp eq i64 %8, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %13
  %19 = add nsw i64 %16, -3
  %20 = getelementptr inbounds i32, i32* %4, i64 %19
  %21 = load i32, i32* %20, align 4, !tbaa !5
  %22 = add nsw i32 %21, %15
  %23 = add nsw i32 %22, %14
  %24 = getelementptr inbounds i32, i32* %4, i64 %16
  store i32 %23, i32* %24, align 4, !tbaa !5
  br label %25

25:                                               ; preds = %18, %13, %1
  %26 = sext i32 %0 to i64
  %27 = getelementptr inbounds i32, i32* %4, i64 %26
  %28 = load i32, i32* %27, align 4, !tbaa !5
  ret i32 %28

29:                                               ; preds = %29, %10
  %30 = phi i32 [ 1, %10 ], [ %43, %29 ]
  %31 = phi i32 [ 2, %10 ], [ %45, %29 ]
  %32 = phi i64 [ 4, %10 ], [ %47, %29 ]
  %33 = phi i64 [ 0, %10 ], [ %48, %29 ]
  %34 = add nsw i64 %32, -3
  %35 = getelementptr inbounds i32, i32* %4, i64 %34
  %36 = load i32, i32* %35, align 4, !tbaa !5
  %37 = add nsw i32 %36, %31
  %38 = add nsw i32 %37, %30
  %39 = getelementptr inbounds i32, i32* %4, i64 %32
  store i32 %38, i32* %39, align 8, !tbaa !5
  %40 = or i64 %32, 1
  %41 = add nsw i64 %32, -2
  %42 = getelementptr inbounds i32, i32* %4, i64 %41
  %43 = load i32, i32* %42, align 8, !tbaa !5
  %44 = add nsw i32 %43, %38
  %45 = add nsw i32 %44, %36
  %46 = getelementptr inbounds i32, i32* %4, i64 %40
  store i32 %45, i32* %46, align 4, !tbaa !5
  %47 = add nuw nsw i64 %32, 2
  %48 = add i64 %33, 2
  %49 = icmp eq i64 %48, %12
  br i1 %49, label %13, label %29, !llvm.loop !9
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_COUNT_OFDIFFERENT_WAYS_EXPRESS_N_SUM_1_3_4_processed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #5
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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
