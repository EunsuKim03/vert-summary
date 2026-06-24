; ModuleID = 'benchmark/cpp_transcoder/SEQUENCES_GIVEN_LENGTH_EVERY_ELEMENT_EQUAL_TWICE_PREVIOUS_1/SEQUENCES_GIVEN_LENGTH_EVERY_ELEMENT_EQUAL_TWICE_PREVIOUS_1_processed.cpp'
source_filename = "benchmark/cpp_transcoder/SEQUENCES_GIVEN_LENGTH_EVERY_ELEMENT_EQUAL_TWICE_PREVIOUS_1/SEQUENCES_GIVEN_LENGTH_EVERY_ELEMENT_EQUAL_TWICE_PREVIOUS_1_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_SEQUENCES_GIVEN_LENGTH_EVERY_ELEMENT_EQUAL_TWICE_PREVIOUS_1_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z6f_goldii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = add i32 %0, 1
  %4 = zext i32 %3 to i64
  %5 = add i32 %1, 1
  %6 = zext i32 %5 to i64
  %7 = mul nuw i64 %6, %4
  %8 = alloca i32, i64 %7, align 16
  %9 = icmp slt i32 %0, 0
  br i1 %9, label %34, label %10

10:                                               ; preds = %2
  %11 = icmp slt i32 %1, 0
  %12 = icmp eq i32 %1, 0
  %13 = add nsw i64 %6, -2
  %14 = and i64 %6, 1
  %15 = icmp eq i32 %5, 3
  %16 = and i64 %13, -2
  %17 = icmp eq i64 %14, 0
  br label %18

18:                                               ; preds = %10, %56
  %19 = phi i64 [ 0, %10 ], [ %57, %56 ]
  br i1 %11, label %56, label %20

20:                                               ; preds = %18
  %21 = icmp eq i64 %19, 0
  %22 = add nsw i64 %19, -1
  %23 = mul nsw i64 %22, %6
  %24 = getelementptr inbounds i32, i32* %8, i64 %23
  %25 = lshr i64 %19, 1
  %26 = and i64 %25, 2147483647
  %27 = mul nuw nsw i64 %26, %6
  %28 = getelementptr inbounds i32, i32* %8, i64 %27
  %29 = mul nuw nsw i64 %19, %6
  %30 = getelementptr inbounds i32, i32* %8, i64 %29
  store i32 0, i32* %30, align 4, !tbaa !5
  br i1 %12, label %56, label %31

31:                                               ; preds = %20
  %32 = getelementptr inbounds i32, i32* %30, i64 1
  %33 = trunc i64 %19 to i32
  store i32 %33, i32* %32, align 4, !tbaa !5
  switch i32 %5, label %59 [
    i32 2, label %56
    i32 3, label %41
  ]

34:                                               ; preds = %56, %2
  %35 = sext i32 %0 to i64
  %36 = mul nsw i64 %6, %35
  %37 = getelementptr inbounds i32, i32* %8, i64 %36
  %38 = sext i32 %1 to i64
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4, !tbaa !5
  ret i32 %40

41:                                               ; preds = %83, %31
  %42 = phi i64 [ 2, %31 ], [ %86, %83 ]
  br i1 %17, label %56, label %43

43:                                               ; preds = %41
  %44 = icmp ult i64 %19, %42
  %45 = select i1 %21, i1 true, i1 %44
  br i1 %45, label %53, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds i32, i32* %24, i64 %42
  %48 = load i32, i32* %47, align 4, !tbaa !5
  %49 = add nsw i64 %42, -1
  %50 = getelementptr inbounds i32, i32* %28, i64 %49
  %51 = load i32, i32* %50, align 4, !tbaa !5
  %52 = add nsw i32 %51, %48
  br label %53

53:                                               ; preds = %46, %43
  %54 = phi i32 [ %52, %46 ], [ 0, %43 ]
  %55 = getelementptr inbounds i32, i32* %30, i64 %42
  store i32 %54, i32* %55, align 4, !tbaa !5
  br label %56

56:                                               ; preds = %53, %41, %31, %20, %18
  %57 = add nuw nsw i64 %19, 1
  %58 = icmp eq i64 %57, %4
  br i1 %58, label %34, label %18, !llvm.loop !9

59:                                               ; preds = %31, %83
  %60 = phi i64 [ %86, %83 ], [ 2, %31 ]
  %61 = phi i64 [ %87, %83 ], [ 0, %31 ]
  %62 = icmp ult i64 %19, %60
  %63 = select i1 %21, i1 true, i1 %62
  br i1 %63, label %71, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds i32, i32* %24, i64 %60
  %66 = load i32, i32* %65, align 4, !tbaa !5
  %67 = add nsw i64 %60, -1
  %68 = getelementptr inbounds i32, i32* %28, i64 %67
  %69 = load i32, i32* %68, align 4, !tbaa !5
  %70 = add nsw i32 %69, %66
  br label %71

71:                                               ; preds = %59, %64
  %72 = phi i32 [ %70, %64 ], [ 0, %59 ]
  %73 = getelementptr inbounds i32, i32* %30, i64 %60
  store i32 %72, i32* %73, align 4, !tbaa !5
  %74 = or i64 %60, 1
  %75 = icmp ule i64 %19, %60
  %76 = select i1 %21, i1 true, i1 %75
  br i1 %76, label %83, label %77

77:                                               ; preds = %71
  %78 = getelementptr inbounds i32, i32* %24, i64 %74
  %79 = load i32, i32* %78, align 4, !tbaa !5
  %80 = getelementptr inbounds i32, i32* %28, i64 %60
  %81 = load i32, i32* %80, align 4, !tbaa !5
  %82 = add nsw i32 %81, %79
  br label %83

83:                                               ; preds = %77, %71
  %84 = phi i32 [ %82, %77 ], [ 0, %71 ]
  %85 = getelementptr inbounds i32, i32* %30, i64 %74
  store i32 %84, i32* %85, align 4, !tbaa !5
  %86 = add nuw nsw i64 %60, 2
  %87 = add i64 %61, 2
  %88 = icmp eq i64 %87, %16
  br i1 %88, label %41, label %59, !llvm.loop !11
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_SEQUENCES_GIVEN_LENGTH_EVERY_ELEMENT_EQUAL_TWICE_PREVIOUS_1_processed.cpp() #4 section ".text.startup" {
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
!11 = distinct !{!11, !10, !12}
!12 = !{!"llvm.loop.peeled.count", i32 2}
