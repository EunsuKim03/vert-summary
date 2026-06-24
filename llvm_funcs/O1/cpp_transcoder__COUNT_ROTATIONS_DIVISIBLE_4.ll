; ModuleID = 'benchmark/cpp_transcoder/COUNT_ROTATIONS_DIVISIBLE_4/COUNT_ROTATIONS_DIVISIBLE_4_processed.cpp'
source_filename = "benchmark/cpp_transcoder/COUNT_ROTATIONS_DIVISIBLE_4/COUNT_ROTATIONS_DIVISIBLE_4_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [68 x i8] c"basic_string::at: __n (which is %zu) >= this->size() (which is %zu)\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_COUNT_ROTATIONS_DIVISIBLE_4_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  %3 = load i64, i64* %2, align 8, !tbaa !5
  %4 = trunc i64 %3 to i32
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = add i32 %4, -1
  %8 = icmp sgt i32 %4, 1
  br i1 %8, label %9, label %24

9:                                                ; preds = %6
  %10 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %11 = call i64 @llvm.umax.i64(i64 %3, i64 1)
  %12 = add i64 %11, -1
  %13 = zext i32 %7 to i64
  br label %43

14:                                               ; preds = %1
  %15 = icmp eq i64 %3, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %14
  call void (i8*, ...) @_ZSt24__throw_out_of_range_fmtPKcz(i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i64 noundef 0, i64 noundef %3) #7
  unreachable

17:                                               ; preds = %14
  %18 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8, !tbaa !12
  %20 = load i8, i8* %19, align 1, !tbaa !13
  %21 = and i8 %20, 3
  %22 = icmp eq i8 %21, 0
  %23 = zext i1 %22 to i32
  br label %69

24:                                               ; preds = %55, %6
  %25 = phi i32 [ 0, %6 ], [ %67, %55 ]
  %26 = sext i32 %7 to i64
  %27 = icmp ugt i64 %3, %26
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  call void (i8*, ...) @_ZSt24__throw_out_of_range_fmtPKcz(i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i64 noundef %26, i64 noundef %3) #7
  unreachable

29:                                               ; preds = %24
  %30 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8, !tbaa !12
  %32 = getelementptr inbounds i8, i8* %31, i64 %26
  %33 = load i8, i8* %32, align 1, !tbaa !13
  %34 = zext i8 %33 to i32
  %35 = mul nuw nsw i32 %34, 10
  %36 = load i8, i8* %31, align 1, !tbaa !13
  %37 = zext i8 %36 to i32
  %38 = add nuw nsw i32 %35, %37
  %39 = and i32 %38, 3
  %40 = icmp eq i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = add nuw nsw i32 %25, %41
  br label %69

43:                                               ; preds = %9, %55
  %44 = phi i64 [ 0, %9 ], [ %51, %55 ]
  %45 = phi i32 [ 0, %9 ], [ %67, %55 ]
  %46 = icmp eq i64 %44, %3
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = and i64 %44, 4294967295
  call void (i8*, ...) @_ZSt24__throw_out_of_range_fmtPKcz(i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i64 noundef %48, i64 noundef %3) #7
  unreachable

49:                                               ; preds = %43
  %50 = load i8*, i8** %10, align 8, !tbaa !12
  %51 = add nuw nsw i64 %44, 1
  %52 = icmp eq i64 %44, %12
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = and i64 %51, 4294967295
  call void (i8*, ...) @_ZSt24__throw_out_of_range_fmtPKcz(i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i64 noundef %54, i64 noundef %3) #7
  unreachable

55:                                               ; preds = %49
  %56 = getelementptr inbounds i8, i8* %50, i64 %44
  %57 = load i8, i8* %56, align 1, !tbaa !13
  %58 = zext i8 %57 to i32
  %59 = mul nuw nsw i32 %58, 10
  %60 = getelementptr inbounds i8, i8* %50, i64 %51
  %61 = load i8, i8* %60, align 1, !tbaa !13
  %62 = zext i8 %61 to i32
  %63 = add nuw nsw i32 %59, %62
  %64 = and i32 %63, 3
  %65 = icmp eq i32 %64, 0
  %66 = zext i1 %65 to i32
  %67 = add nuw nsw i32 %45, %66
  %68 = icmp eq i64 %51, %13
  br i1 %68, label %24, label %43, !llvm.loop !14

69:                                               ; preds = %29, %17
  %70 = phi i32 [ %23, %17 ], [ %42, %29 ]
  ret i32 %70
}

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_COUNT_ROTATIONS_DIVISIBLE_4_processed.cpp() #5 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #8
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #6

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { noreturn }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !11, i64 8}
!6 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !7, i64 0, !11, i64 8, !9, i64 16}
!7 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !8, i64 0}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"long", !9, i64 0}
!12 = !{!6, !8, i64 0}
!13 = !{!9, !9, i64 0}
!14 = distinct !{!14, !15, !16}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.unroll.disable"}
