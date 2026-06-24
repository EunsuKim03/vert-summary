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
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = add i32 %4, -1
  %8 = icmp sgt i32 %4, 1
  br i1 %8, label %9, label %20

9:                                                ; preds = %6
  %10 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %11 = add i64 %3, -1
  %12 = zext i32 %7 to i64
  br label %39

13:                                               ; preds = %1
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8, !tbaa !12
  %16 = load i8, i8* %15, align 1, !tbaa !13
  %17 = and i8 %16, 3
  %18 = icmp eq i8 %17, 0
  %19 = zext i1 %18 to i32
  br label %65

20:                                               ; preds = %51, %6
  %21 = phi i32 [ 0, %6 ], [ %63, %51 ]
  %22 = sext i32 %7 to i64
  %23 = icmp ugt i64 %3, %22
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void (i8*, ...) @_ZSt24__throw_out_of_range_fmtPKcz(i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i64 noundef %22, i64 noundef %3) #6
  unreachable

25:                                               ; preds = %20
  %26 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8, !tbaa !12
  %28 = getelementptr inbounds i8, i8* %27, i64 %22
  %29 = load i8, i8* %28, align 1, !tbaa !13
  %30 = zext i8 %29 to i32
  %31 = mul nuw nsw i32 %30, 10
  %32 = load i8, i8* %27, align 1, !tbaa !13
  %33 = zext i8 %32 to i32
  %34 = add nuw nsw i32 %31, %33
  %35 = and i32 %34, 3
  %36 = icmp eq i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = add nuw nsw i32 %21, %37
  br label %65

39:                                               ; preds = %9, %51
  %40 = phi i64 [ 0, %9 ], [ %47, %51 ]
  %41 = phi i32 [ 0, %9 ], [ %63, %51 ]
  %42 = icmp eq i64 %40, %3
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = and i64 %3, 4294967295
  tail call void (i8*, ...) @_ZSt24__throw_out_of_range_fmtPKcz(i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i64 noundef %44, i64 noundef %3) #6
  unreachable

45:                                               ; preds = %39
  %46 = load i8*, i8** %10, align 8, !tbaa !12
  %47 = add nuw nsw i64 %40, 1
  %48 = icmp eq i64 %40, %11
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = and i64 %47, 4294967295
  tail call void (i8*, ...) @_ZSt24__throw_out_of_range_fmtPKcz(i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i64 noundef %50, i64 noundef %3) #6
  unreachable

51:                                               ; preds = %45
  %52 = getelementptr inbounds i8, i8* %46, i64 %40
  %53 = load i8, i8* %52, align 1, !tbaa !13
  %54 = zext i8 %53 to i32
  %55 = mul nuw nsw i32 %54, 10
  %56 = getelementptr inbounds i8, i8* %46, i64 %47
  %57 = load i8, i8* %56, align 1, !tbaa !13
  %58 = zext i8 %57 to i32
  %59 = add nuw nsw i32 %55, %58
  %60 = and i32 %59, 3
  %61 = icmp eq i32 %60, 0
  %62 = zext i1 %61 to i32
  %63 = add nuw nsw i32 %41, %62
  %64 = icmp eq i64 %47, %12
  br i1 %64, label %20, label %39, !llvm.loop !14

65:                                               ; preds = %25, %13
  %66 = phi i32 [ %19, %13 ], [ %38, %25 ]
  ret i32 %66
}

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_COUNT_ROTATIONS_DIVISIBLE_4_processed.cpp() #5 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #7
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn }
attributes #7 = { nounwind }

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
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
