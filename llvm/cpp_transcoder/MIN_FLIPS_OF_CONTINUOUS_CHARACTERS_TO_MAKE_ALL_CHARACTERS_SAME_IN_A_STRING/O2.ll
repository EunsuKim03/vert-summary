; ModuleID = 'benchmark/cpp_transcoder/MIN_FLIPS_OF_CONTINUOUS_CHARACTERS_TO_MAKE_ALL_CHARACTERS_SAME_IN_A_STRING/MIN_FLIPS_OF_CONTINUOUS_CHARACTERS_TO_MAKE_ALL_CHARACTERS_SAME_IN_A_STRING_processed.cpp'
source_filename = "benchmark/cpp_transcoder/MIN_FLIPS_OF_CONTINUOUS_CHARACTERS_TO_MAKE_ALL_CHARACTERS_SAME_IN_A_STRING/MIN_FLIPS_OF_CONTINUOUS_CHARACTERS_TO_MAKE_ALL_CHARACTERS_SAME_IN_A_STRING_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_MIN_FLIPS_OF_CONTINUOUS_CHARACTERS_TO_MAKE_ALL_CHARACTERS_SAME_IN_A_STRING_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPci(i8* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %42

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  %6 = icmp ult i32 %1, 8
  br i1 %6, label %35, label %7

7:                                                ; preds = %4
  %8 = and i64 %5, 4294967288
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi i64 [ 0, %7 ], [ %28, %9 ]
  %11 = phi <4 x i32> [ zeroinitializer, %7 ], [ %26, %9 ]
  %12 = phi <4 x i32> [ zeroinitializer, %7 ], [ %27, %9 ]
  %13 = phi <4 x i8> [ <i8 poison, i8 poison, i8 poison, i8 32>, %7 ], [ %19, %9 ]
  %14 = getelementptr inbounds i8, i8* %0, i64 %10
  %15 = bitcast i8* %14 to <4 x i8>*
  %16 = load <4 x i8>, <4 x i8>* %15, align 1, !tbaa !5
  %17 = getelementptr inbounds i8, i8* %14, i64 4
  %18 = bitcast i8* %17 to <4 x i8>*
  %19 = load <4 x i8>, <4 x i8>* %18, align 1, !tbaa !5
  %20 = shufflevector <4 x i8> %13, <4 x i8> %16, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %21 = shufflevector <4 x i8> %16, <4 x i8> %19, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %22 = icmp ne <4 x i8> %20, %16
  %23 = icmp ne <4 x i8> %21, %19
  %24 = zext <4 x i1> %22 to <4 x i32>
  %25 = zext <4 x i1> %23 to <4 x i32>
  %26 = add <4 x i32> %11, %24
  %27 = add <4 x i32> %12, %25
  %28 = add nuw i64 %10, 8
  %29 = icmp eq i64 %28, %8
  br i1 %29, label %30, label %9, !llvm.loop !8

30:                                               ; preds = %9
  %31 = add <4 x i32> %27, %26
  %32 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %31)
  %33 = icmp eq i64 %8, %5
  %34 = extractelement <4 x i8> %19, i64 3
  br i1 %33, label %39, label %35

35:                                               ; preds = %4, %30
  %36 = phi i64 [ %8, %30 ], [ 0, %4 ]
  %37 = phi i32 [ %32, %30 ], [ 0, %4 ]
  %38 = phi i8 [ %34, %30 ], [ 32, %4 ]
  br label %44

39:                                               ; preds = %44, %30
  %40 = phi i32 [ %32, %30 ], [ %52, %44 ]
  %41 = lshr i32 %40, 1
  br label %42

42:                                               ; preds = %39, %2
  %43 = phi i32 [ 0, %2 ], [ %41, %39 ]
  ret i32 %43

44:                                               ; preds = %35, %44
  %45 = phi i64 [ %53, %44 ], [ %36, %35 ]
  %46 = phi i32 [ %52, %44 ], [ %37, %35 ]
  %47 = phi i8 [ %49, %44 ], [ %38, %35 ]
  %48 = getelementptr inbounds i8, i8* %0, i64 %45
  %49 = load i8, i8* %48, align 1, !tbaa !5
  %50 = icmp ne i8 %47, %49
  %51 = zext i1 %50 to i32
  %52 = add nuw nsw i32 %46, %51
  %53 = add nuw nsw i64 %45, 1
  %54 = icmp eq i64 %53, %5
  br i1 %54, label %39, label %44, !llvm.loop !11
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_MIN_FLIPS_OF_CONTINUOUS_CHARACTERS_TO_MAKE_ALL_CHARACTERS_SAME_IN_A_STRING_processed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.isvectorized", i32 1}
!11 = distinct !{!11, !9, !12, !10}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
