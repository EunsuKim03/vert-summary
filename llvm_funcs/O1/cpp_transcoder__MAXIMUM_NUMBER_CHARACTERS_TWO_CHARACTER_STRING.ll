; ModuleID = 'benchmark/cpp_transcoder/MAXIMUM_NUMBER_CHARACTERS_TWO_CHARACTER_STRING/MAXIMUM_NUMBER_CHARACTERS_TWO_CHARACTER_STRING_processed.cpp'
source_filename = "benchmark/cpp_transcoder/MAXIMUM_NUMBER_CHARACTERS_TWO_CHARACTER_STRING/MAXIMUM_NUMBER_CHARACTERS_TWO_CHARACTER_STRING_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_MAXIMUM_NUMBER_CHARACTERS_TWO_CHARACTER_STRING_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  %3 = load i64, i64* %2, align 8, !tbaa !5
  %4 = trunc i64 %3 to i32
  %5 = icmp sgt i32 %4, 1
  br i1 %5, label %6, label %17

6:                                                ; preds = %1
  %7 = add i64 %3, 4294967295
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %9 = shl i64 %3, 32
  %10 = ashr exact i64 %9, 32
  %11 = and i64 %7, 4294967295
  %12 = and i64 %3, 4294967295
  br label %19

13:                                               ; preds = %42, %19
  %14 = phi i32 [ %22, %19 ], [ %43, %42 ]
  %15 = add nuw nsw i64 %21, 1
  %16 = icmp eq i64 %23, %11
  br i1 %16, label %17, label %19, !llvm.loop !12

17:                                               ; preds = %13, %1
  %18 = phi i32 [ -1, %1 ], [ %14, %13 ]
  ret i32 %18

19:                                               ; preds = %6, %13
  %20 = phi i64 [ 0, %6 ], [ %23, %13 ]
  %21 = phi i64 [ 1, %6 ], [ %15, %13 ]
  %22 = phi i32 [ -1, %6 ], [ %14, %13 ]
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp slt i64 %23, %10
  br i1 %24, label %25, label %13

25:                                               ; preds = %19
  %26 = load i8*, i8** %8, align 8, !tbaa !15
  %27 = getelementptr inbounds i8, i8* %26, i64 %20
  %28 = load i8, i8* %27, align 1, !tbaa !16
  %29 = xor i64 %20, -1
  br label %30

30:                                               ; preds = %25, %42
  %31 = phi i64 [ %21, %25 ], [ %44, %42 ]
  %32 = phi i32 [ %22, %25 ], [ %43, %42 ]
  %33 = getelementptr inbounds i8, i8* %26, i64 %31
  %34 = load i8, i8* %33, align 1, !tbaa !16
  %35 = icmp eq i8 %28, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = add nsw i64 %31, %29
  %38 = trunc i64 %37 to i32
  %39 = call i32 @llvm.abs.i32(i32 %38, i1 true)
  %40 = icmp slt i32 %32, %39
  %41 = select i1 %40, i32 %39, i32 %32
  br label %42

42:                                               ; preds = %30, %36
  %43 = phi i32 [ %41, %36 ], [ %32, %30 ]
  %44 = add nuw nsw i64 %31, 1
  %45 = icmp eq i64 %44, %12
  br i1 %45, label %13, label %30, !llvm.loop !17
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_MAXIMUM_NUMBER_CHARACTERS_TWO_CHARACTER_STRING_processed.cpp() #4 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!5 = !{!6, !11, i64 8}
!6 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !7, i64 0, !11, i64 8, !9, i64 16}
!7 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !8, i64 0}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"long", !9, i64 0}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = !{!6, !8, i64 0}
!16 = !{!9, !9, i64 0}
!17 = distinct !{!17, !13, !14}
