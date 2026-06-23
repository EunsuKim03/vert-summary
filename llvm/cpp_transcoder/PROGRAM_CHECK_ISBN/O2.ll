; ModuleID = 'benchmark/cpp_transcoder/PROGRAM_CHECK_ISBN/PROGRAM_CHECK_ISBN_processed.cpp'
source_filename = "benchmark/cpp_transcoder/PROGRAM_CHECK_ISBN/PROGRAM_CHECK_ISBN_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_PROGRAM_CHECK_ISBN_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  %3 = load i64, i64* %2, align 8, !tbaa !5
  %4 = trunc i64 %3 to i32
  %5 = icmp eq i32 %4, 10
  br i1 %5, label %6, label %95

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8, !tbaa !12
  %9 = load i8, i8* %8, align 1, !tbaa !13
  %10 = add i8 %9, -58
  %11 = icmp ult i8 %10, -10
  br i1 %11, label %95, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds i8, i8* %8, i64 1
  %14 = load i8, i8* %13, align 1, !tbaa !13
  %15 = add i8 %14, -58
  %16 = icmp ult i8 %15, -10
  br i1 %16, label %95, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds i8, i8* %8, i64 2
  %19 = load i8, i8* %18, align 1, !tbaa !13
  %20 = add i8 %19, -58
  %21 = icmp ult i8 %20, -10
  br i1 %21, label %95, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds i8, i8* %8, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !13
  %25 = add i8 %24, -58
  %26 = icmp ult i8 %25, -10
  br i1 %26, label %95, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds i8, i8* %8, i64 4
  %29 = load i8, i8* %28, align 1, !tbaa !13
  %30 = add i8 %29, -58
  %31 = icmp ult i8 %30, -10
  br i1 %31, label %95, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds i8, i8* %8, i64 5
  %34 = load i8, i8* %33, align 1, !tbaa !13
  %35 = add i8 %34, -58
  %36 = icmp ult i8 %35, -10
  br i1 %36, label %95, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds i8, i8* %8, i64 6
  %39 = load i8, i8* %38, align 1, !tbaa !13
  %40 = add i8 %39, -58
  %41 = icmp ult i8 %40, -10
  br i1 %41, label %95, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds i8, i8* %8, i64 7
  %44 = load i8, i8* %43, align 1, !tbaa !13
  %45 = add i8 %44, -58
  %46 = icmp ult i8 %45, -10
  br i1 %46, label %95, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds i8, i8* %8, i64 8
  %49 = load i8, i8* %48, align 1, !tbaa !13
  %50 = add i8 %49, -58
  %51 = icmp ult i8 %50, -10
  br i1 %51, label %95, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds i8, i8* %8, i64 9
  %54 = load i8, i8* %53, align 1, !tbaa !13
  %55 = icmp ne i8 %54, 88
  %56 = add i8 %54, -58
  %57 = icmp ult i8 %56, -10
  %58 = and i1 %55, %57
  br i1 %58, label %95, label %59

59:                                               ; preds = %52
  %60 = zext i8 %44 to i16
  %61 = mul nuw nsw i16 %60, 3
  %62 = zext i8 %39 to i16
  %63 = shl nuw nsw i16 %62, 2
  %64 = zext i8 %34 to i16
  %65 = mul nuw nsw i16 %64, 5
  %66 = zext i8 %29 to i16
  %67 = mul nuw nsw i16 %66, 6
  %68 = zext i8 %24 to i16
  %69 = mul nuw nsw i16 %68, 7
  %70 = zext i8 %19 to i16
  %71 = shl nuw nsw i16 %70, 3
  %72 = zext i8 %14 to i16
  %73 = mul nuw nsw i16 %72, 9
  %74 = zext i8 %9 to i16
  %75 = mul nuw nsw i16 %74, 10
  %76 = add nuw nsw i16 %73, %75
  %77 = add nuw nsw i16 %71, %76
  %78 = add nuw nsw i16 %69, %77
  %79 = add nuw i16 %67, %78
  %80 = add i16 %65, %79
  %81 = add i16 %63, %80
  %82 = add i16 %61, %81
  %83 = zext i8 %49 to i16
  %84 = shl nuw nsw i16 %83, 1
  %85 = add i16 %84, %82
  %86 = add i16 %85, -2592
  %87 = zext i8 %54 to i16
  %88 = icmp eq i8 %54, 88
  %89 = add nsw i16 %87, -48
  %90 = select i1 %88, i16 10, i16 %89
  %91 = add i16 %90, %86
  %92 = urem i16 %91, 11
  %93 = icmp eq i16 %92, 0
  %94 = zext i1 %93 to i32
  br label %95

95:                                               ; preds = %6, %12, %17, %22, %27, %32, %37, %42, %47, %52, %59, %1
  %96 = phi i32 [ 0, %1 ], [ %94, %59 ], [ 0, %52 ], [ 0, %47 ], [ 0, %42 ], [ 0, %37 ], [ 0, %32 ], [ 0, %27 ], [ 0, %22 ], [ 0, %17 ], [ 0, %12 ], [ 0, %6 ]
  ret i32 %96
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_PROGRAM_CHECK_ISBN_processed.cpp() #4 section ".text.startup" {
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
