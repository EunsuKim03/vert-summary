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
  %3 = add nsw i32 %0, 1
  %4 = zext i32 %3 to i64
  %5 = add i32 %1, 1
  %6 = zext i32 %5 to i64
  %7 = mul nuw i64 %6, %4
  %8 = alloca i32, i64 %7, align 16
  %9 = icmp slt i32 %0, 0
  br i1 %9, label %36, label %10

10:                                               ; preds = %2
  %11 = icmp slt i32 %1, 0
  %12 = add i32 %0, 1
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %8, i64 1
  %15 = zext i32 %5 to i64
  br label %16

16:                                               ; preds = %10, %43
  %17 = phi i64 [ 0, %10 ], [ %44, %43 ]
  br i1 %11, label %43, label %18

18:                                               ; preds = %16
  %19 = icmp eq i64 %17, 0
  %20 = add nsw i64 %17, -1
  %21 = mul nsw i64 %20, %6
  %22 = getelementptr inbounds i32, i32* %8, i64 %21
  %23 = lshr i64 %17, 1
  %24 = and i64 %23, 2147483647
  %25 = mul nuw nsw i64 %24, %6
  %26 = getelementptr inbounds i32, i32* %8, i64 %25
  %27 = mul nuw nsw i64 %17, %6
  %28 = getelementptr inbounds i32, i32* %8, i64 %27
  %29 = mul nuw nsw i64 %17, %6
  %30 = getelementptr inbounds i32, i32* %14, i64 %29
  %31 = mul nuw nsw i64 %17, %6
  %32 = getelementptr inbounds i32, i32* %8, i64 %31
  %33 = mul nuw nsw i64 %17, %6
  %34 = getelementptr inbounds i32, i32* %8, i64 %33
  %35 = trunc i64 %17 to i32
  br label %46

36:                                               ; preds = %43, %2
  %37 = sext i32 %0 to i64
  %38 = mul nsw i64 %6, %37
  %39 = getelementptr inbounds i32, i32* %8, i64 %38
  %40 = sext i32 %1 to i64
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4, !tbaa !5
  ret i32 %42

43:                                               ; preds = %67, %16
  %44 = add nuw nsw i64 %17, 1
  %45 = icmp eq i64 %44, %13
  br i1 %45, label %36, label %16, !llvm.loop !9

46:                                               ; preds = %18, %67
  %47 = phi i64 [ 0, %18 ], [ %68, %67 ]
  %48 = icmp eq i64 %47, 0
  %49 = select i1 %19, i1 true, i1 %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = getelementptr inbounds i32, i32* %34, i64 %47
  store i32 0, i32* %51, align 4, !tbaa !5
  br label %67

52:                                               ; preds = %46
  %53 = icmp ult i64 %17, %47
  br i1 %53, label %54, label %56

54:                                               ; preds = %52
  %55 = getelementptr inbounds i32, i32* %32, i64 %47
  store i32 0, i32* %55, align 4, !tbaa !5
  br label %67

56:                                               ; preds = %52
  %57 = icmp eq i64 %47, 1
  br i1 %57, label %58, label %59

58:                                               ; preds = %56
  store i32 %35, i32* %30, align 4, !tbaa !5
  br label %67

59:                                               ; preds = %56
  %60 = getelementptr inbounds i32, i32* %22, i64 %47
  %61 = load i32, i32* %60, align 4, !tbaa !5
  %62 = add nsw i64 %47, -1
  %63 = getelementptr inbounds i32, i32* %26, i64 %62
  %64 = load i32, i32* %63, align 4, !tbaa !5
  %65 = add nsw i32 %64, %61
  %66 = getelementptr inbounds i32, i32* %28, i64 %47
  store i32 %65, i32* %66, align 4, !tbaa !5
  br label %67

67:                                               ; preds = %50, %58, %59, %54
  %68 = add nuw nsw i64 %47, 1
  %69 = icmp eq i64 %68, %15
  br i1 %69, label %43, label %46, !llvm.loop !12
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_SEQUENCES_GIVEN_LENGTH_EVERY_ELEMENT_EQUAL_TWICE_PREVIOUS_1_processed.cpp() #4 section ".text.startup" {
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
