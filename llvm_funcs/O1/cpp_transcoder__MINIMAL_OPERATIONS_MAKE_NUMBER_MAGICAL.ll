; ModuleID = 'benchmark/cpp_transcoder/MINIMAL_OPERATIONS_MAKE_NUMBER_MAGICAL/MINIMAL_OPERATIONS_MAKE_NUMBER_MAGICAL_processed.cpp'
source_filename = "benchmark/cpp_transcoder/MINIMAL_OPERATIONS_MAKE_NUMBER_MAGICAL/MINIMAL_OPERATIONS_MAKE_NUMBER_MAGICAL_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_MINIMAL_OPERATIONS_MAKE_NUMBER_MAGICAL_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  br label %3

3:                                                ; preds = %1, %11
  %4 = phi i32 [ 0, %1 ], [ %12, %11 ]
  %5 = phi i32 [ 6, %1 ], [ %87, %11 ]
  br label %7

6:                                                ; preds = %11
  ret i32 %87

7:                                                ; preds = %3, %18
  %8 = phi i32 [ 0, %3 ], [ %19, %18 ]
  %9 = phi i32 [ %5, %3 ], [ %87, %18 ]
  %10 = add nuw nsw i32 %8, %4
  br label %14

11:                                               ; preds = %18
  %12 = add nuw nsw i32 %4, 1
  %13 = icmp eq i32 %12, 10
  br i1 %13, label %6, label %3, !llvm.loop !5

14:                                               ; preds = %7, %24
  %15 = phi i32 [ 0, %7 ], [ %25, %24 ]
  %16 = phi i32 [ %9, %7 ], [ %87, %24 ]
  %17 = add nuw nsw i32 %10, %15
  br label %21

18:                                               ; preds = %24
  %19 = add nuw nsw i32 %8, 1
  %20 = icmp eq i32 %19, 10
  br i1 %20, label %11, label %7, !llvm.loop !8

21:                                               ; preds = %14, %31
  %22 = phi i32 [ 0, %14 ], [ %32, %31 ]
  %23 = phi i32 [ %16, %14 ], [ %87, %31 ]
  br label %27

24:                                               ; preds = %31
  %25 = add nuw nsw i32 %15, 1
  %26 = icmp eq i32 %25, 10
  br i1 %26, label %18, label %14, !llvm.loop !9

27:                                               ; preds = %21, %34
  %28 = phi i32 [ 0, %21 ], [ %35, %34 ]
  %29 = phi i32 [ %23, %21 ], [ %87, %34 ]
  %30 = add nuw nsw i32 %28, %22
  br label %37

31:                                               ; preds = %34
  %32 = add nuw nsw i32 %22, 1
  %33 = icmp eq i32 %32, 10
  br i1 %33, label %24, label %21, !llvm.loop !10

34:                                               ; preds = %86
  %35 = add nuw nsw i32 %28, 1
  %36 = icmp eq i32 %35, 10
  br i1 %36, label %31, label %27, !llvm.loop !11

37:                                               ; preds = %27, %86
  %38 = phi i32 [ 0, %27 ], [ %88, %86 ]
  %39 = phi i32 [ %29, %27 ], [ %87, %86 ]
  %40 = add nuw nsw i32 %30, %38
  %41 = icmp eq i32 %17, %40
  br i1 %41, label %42, label %86

42:                                               ; preds = %37
  %43 = load i8*, i8** %2, align 8, !tbaa !12
  %44 = load i8, i8* %43, align 1, !tbaa !19
  %45 = sext i8 %44 to i32
  %46 = add nsw i32 %45, -48
  %47 = icmp ne i32 %4, %46
  %48 = zext i1 %47 to i32
  %49 = getelementptr inbounds i8, i8* %43, i64 1
  %50 = load i8, i8* %49, align 1, !tbaa !19
  %51 = sext i8 %50 to i32
  %52 = add nsw i32 %51, -48
  %53 = icmp eq i32 %8, %52
  %54 = select i1 %47, i32 2, i32 1
  %55 = select i1 %53, i32 %48, i32 %54
  %56 = getelementptr inbounds i8, i8* %43, i64 2
  %57 = load i8, i8* %56, align 1, !tbaa !19
  %58 = sext i8 %57 to i32
  %59 = add nsw i32 %58, -48
  %60 = icmp ne i32 %15, %59
  %61 = zext i1 %60 to i32
  %62 = add nuw nsw i32 %55, %61
  %63 = getelementptr inbounds i8, i8* %43, i64 3
  %64 = load i8, i8* %63, align 1, !tbaa !19
  %65 = sext i8 %64 to i32
  %66 = add nsw i32 %65, -48
  %67 = icmp ne i32 %22, %66
  %68 = zext i1 %67 to i32
  %69 = add nuw nsw i32 %62, %68
  %70 = getelementptr inbounds i8, i8* %43, i64 4
  %71 = load i8, i8* %70, align 1, !tbaa !19
  %72 = sext i8 %71 to i32
  %73 = add nsw i32 %72, -48
  %74 = icmp ne i32 %28, %73
  %75 = zext i1 %74 to i32
  %76 = add nuw nsw i32 %69, %75
  %77 = getelementptr inbounds i8, i8* %43, i64 5
  %78 = load i8, i8* %77, align 1, !tbaa !19
  %79 = sext i8 %78 to i32
  %80 = add nsw i32 %79, -48
  %81 = icmp ne i32 %38, %80
  %82 = zext i1 %81 to i32
  %83 = add nuw nsw i32 %76, %82
  %84 = icmp slt i32 %83, %39
  %85 = select i1 %84, i32 %83, i32 %39
  br label %86

86:                                               ; preds = %37, %42
  %87 = phi i32 [ %85, %42 ], [ %39, %37 ]
  %88 = add nuw nsw i32 %38, 1
  %89 = icmp eq i32 %88, 10
  br i1 %89, label %34, label %37, !llvm.loop !20
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_MINIMAL_OPERATIONS_MAKE_NUMBER_MAGICAL_processed.cpp() #4 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #5
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
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = distinct !{!8, !6, !7}
!9 = distinct !{!9, !6, !7}
!10 = distinct !{!10, !6, !7}
!11 = distinct !{!11, !6, !7}
!12 = !{!13, !15, i64 0}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0, !18, i64 8, !16, i64 16}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !15, i64 0}
!15 = !{!"any pointer", !16, i64 0}
!16 = !{!"omnipotent char", !17, i64 0}
!17 = !{!"Simple C++ TBAA"}
!18 = !{!"long", !16, i64 0}
!19 = !{!16, !16, i64 0}
!20 = distinct !{!20, !6, !7}
