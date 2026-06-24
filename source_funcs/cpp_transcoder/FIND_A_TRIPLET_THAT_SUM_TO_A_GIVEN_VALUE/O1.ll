; ModuleID = 'benchmark/cpp_transcoder/FIND_A_TRIPLET_THAT_SUM_TO_A_GIVEN_VALUE/FIND_A_TRIPLET_THAT_SUM_TO_A_GIVEN_VALUE_processed.cpp'
source_filename = "benchmark/cpp_transcoder/FIND_A_TRIPLET_THAT_SUM_TO_A_GIVEN_VALUE/FIND_A_TRIPLET_THAT_SUM_TO_A_GIVEN_VALUE_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::num_get" = type { %"class.std::locale::facet.base", [4 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [12 x i8] c"Triplet is \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_FIND_A_TRIPLET_THAT_SUM_TO_A_GIVEN_VALUE_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z6f_goldPiii(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = add i32 %1, -2
  %5 = add nsw i32 %1, -1
  %6 = call i32 @llvm.smax.i32(i32 %4, i32 0)
  %7 = zext i32 %6 to i64
  br label %8

8:                                                ; preds = %65, %3
  %9 = phi i64 [ %14, %65 ], [ 0, %3 ]
  %10 = phi i64 [ %69, %65 ], [ 1, %3 ]
  %11 = phi i32 [ %68, %65 ], [ 2, %3 ]
  %12 = icmp eq i64 %9, %7
  br i1 %12, label %70, label %13

13:                                               ; preds = %8
  %14 = add nuw nsw i64 %9, 1
  %15 = getelementptr inbounds i32, i32* %0, i64 %9
  %16 = getelementptr inbounds i32, i32* %0, i64 %9
  br label %17

17:                                               ; preds = %61, %13
  %18 = phi i64 [ %24, %61 ], [ %10, %13 ]
  %19 = phi i32 [ %64, %61 ], [ %11, %13 ]
  %20 = zext i32 %19 to i64
  %21 = trunc i64 %18 to i32
  %22 = icmp sgt i32 %5, %21
  br i1 %22, label %23, label %65

23:                                               ; preds = %17
  %24 = add nuw nsw i64 %18, 1
  %25 = trunc i64 %24 to i32
  %26 = icmp slt i32 %25, %1
  br i1 %26, label %27, label %61

27:                                               ; preds = %23
  %28 = load i32, i32* %15, align 4, !tbaa !5
  %29 = getelementptr inbounds i32, i32* %0, i64 %18
  %30 = load i32, i32* %29, align 4, !tbaa !5
  %31 = add nsw i32 %30, %28
  %32 = getelementptr inbounds i32, i32* %0, i64 %20
  %33 = load i32, i32* %32, align 4, !tbaa !5
  %34 = add nsw i32 %31, %33
  %35 = icmp eq i32 %34, %2
  br i1 %35, label %41, label %56

36:                                               ; preds = %56
  %37 = getelementptr inbounds i32, i32* %0, i64 %58
  %38 = load i32, i32* %37, align 4, !tbaa !5
  %39 = add nsw i32 %31, %38
  %40 = icmp eq i32 %39, %2
  br i1 %40, label %41, label %56, !llvm.loop !9

41:                                               ; preds = %36, %27
  %42 = phi i64 [ %20, %27 ], [ %58, %36 ]
  %43 = phi i1 [ %26, %27 ], [ %60, %36 ]
  %44 = getelementptr inbounds i32, i32* %0, i64 %18
  %45 = and i64 %42, 4294967295
  %46 = getelementptr inbounds i32, i32* %0, i64 %45
  %47 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 noundef 11)
  %48 = load i32, i32* %16, align 4, !tbaa !5
  %49 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %48)
  %50 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %49, i8* noundef nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 noundef 2)
  %51 = load i32, i32* %44, align 4, !tbaa !5
  %52 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %49, i32 noundef %51)
  %53 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %52, i8* noundef nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 noundef 2)
  %54 = load i32, i32* %46, align 4, !tbaa !5
  %55 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %52, i32 noundef %54)
  br label %61

56:                                               ; preds = %27, %36
  %57 = phi i64 [ %58, %36 ], [ %20, %27 ]
  %58 = add nuw nsw i64 %57, 1
  %59 = trunc i64 %58 to i32
  %60 = icmp slt i32 %59, %1
  br i1 %60, label %36, label %61, !llvm.loop !9

61:                                               ; preds = %56, %23, %41
  %62 = phi i1 [ %43, %41 ], [ %26, %23 ], [ %60, %56 ]
  %63 = phi i32 [ 1, %41 ], [ 8, %23 ], [ 8, %56 ]
  %64 = add i32 %19, 1
  br i1 %62, label %65, label %17, !llvm.loop !12

65:                                               ; preds = %17, %61
  %66 = phi i32 [ %63, %61 ], [ 5, %17 ]
  %67 = icmp eq i32 %66, 5
  %68 = add nuw i32 %11, 1
  %69 = add nuw nsw i64 %10, 1
  br i1 %67, label %8, label %70, !llvm.loop !13

70:                                               ; preds = %8, %65
  %71 = phi i32 [ %66, %65 ], [ 2, %8 ]
  %72 = icmp ne i32 %71, 2
  %73 = zext i1 %72 to i32
  ret i32 %73
}

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i8* noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_FIND_A_TRIPLET_THAT_SUM_TO_A_GIVEN_VALUE_processed.cpp() #4 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
