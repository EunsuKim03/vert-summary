; ModuleID = 'benchmark/cpp_transcoder/COUNT_CHARACTERS_POSITION_ENGLISH_ALPHABETS/COUNT_CHARACTERS_POSITION_ENGLISH_ALPHABETS_processed.cpp'
source_filename = "benchmark/cpp_transcoder/COUNT_CHARACTERS_POSITION_ENGLISH_ALPHABETS/COUNT_CHARACTERS_POSITION_ENGLISH_ALPHABETS_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_COUNT_CHARACTERS_POSITION_ENGLISH_ALPHABETS_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  %3 = load i64, i64* %2, align 8, !tbaa !5
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %30, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8, !tbaa !12
  %8 = and i64 %3, 1
  %9 = icmp eq i64 %3, 1
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = and i64 %3, -2
  br label %32

12:                                               ; preds = %32, %5
  %13 = phi i32 [ undef, %5 ], [ %60, %32 ]
  %14 = phi i64 [ 0, %5 ], [ %61, %32 ]
  %15 = phi i32 [ 0, %5 ], [ %60, %32 ]
  %16 = icmp eq i64 %8, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds i8, i8* %7, i64 %14
  %19 = load i8, i8* %18, align 1, !tbaa !13
  %20 = sext i8 %19 to i32
  %21 = add nsw i32 %20, -97
  %22 = zext i32 %21 to i64
  %23 = icmp eq i64 %14, %22
  %24 = add nsw i32 %20, -65
  %25 = zext i32 %24 to i64
  %26 = icmp eq i64 %14, %25
  %27 = select i1 %23, i1 true, i1 %26
  %28 = zext i1 %27 to i32
  %29 = add nuw nsw i32 %15, %28
  br label %30

30:                                               ; preds = %17, %12, %1
  %31 = phi i32 [ 0, %1 ], [ %13, %12 ], [ %29, %17 ]
  ret i32 %31

32:                                               ; preds = %32, %10
  %33 = phi i64 [ 0, %10 ], [ %61, %32 ]
  %34 = phi i32 [ 0, %10 ], [ %60, %32 ]
  %35 = phi i64 [ 0, %10 ], [ %62, %32 ]
  %36 = getelementptr inbounds i8, i8* %7, i64 %33
  %37 = load i8, i8* %36, align 1, !tbaa !13
  %38 = sext i8 %37 to i32
  %39 = add nsw i32 %38, -97
  %40 = zext i32 %39 to i64
  %41 = icmp eq i64 %33, %40
  %42 = add nsw i32 %38, -65
  %43 = zext i32 %42 to i64
  %44 = icmp eq i64 %33, %43
  %45 = select i1 %41, i1 true, i1 %44
  %46 = zext i1 %45 to i32
  %47 = add nuw nsw i32 %34, %46
  %48 = or i64 %33, 1
  %49 = getelementptr inbounds i8, i8* %7, i64 %48
  %50 = load i8, i8* %49, align 1, !tbaa !13
  %51 = sext i8 %50 to i32
  %52 = add nsw i32 %51, -97
  %53 = zext i32 %52 to i64
  %54 = icmp eq i64 %48, %53
  %55 = add nsw i32 %51, -65
  %56 = zext i32 %55 to i64
  %57 = icmp eq i64 %48, %56
  %58 = select i1 %54, i1 true, i1 %57
  %59 = zext i1 %58 to i32
  %60 = add nuw nsw i32 %47, %59
  %61 = add nuw nsw i64 %33, 2
  %62 = add i64 %35, 2
  %63 = icmp eq i64 %62, %11
  br i1 %63, label %12, label %32, !llvm.loop !14
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_COUNT_CHARACTERS_POSITION_ENGLISH_ALPHABETS_processed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #5
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
