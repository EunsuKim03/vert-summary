; ModuleID = 'benchmark/cpp_transcoder/COUNT_ROTATIONS_DIVISIBLE_8/COUNT_ROTATIONS_DIVISIBLE_8_processed.cpp'
source_filename = "benchmark/cpp_transcoder/COUNT_ROTATIONS_DIVISIBLE_8/COUNT_ROTATIONS_DIVISIBLE_8_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_COUNT_ROTATIONS_DIVISIBLE_8_processed.cpp, i8* null }]

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
  switch i32 %4, label %5 [
    i32 1, label %12
    i32 2, label %19
  ]

5:                                                ; preds = %1
  %6 = add i32 %4, -2
  %7 = icmp sgt i32 %4, 2
  br i1 %7, label %8, label %40

8:                                                ; preds = %5
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8, !tbaa !12
  %11 = zext i32 %6 to i64
  br label %76

12:                                               ; preds = %1
  %13 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8, !tbaa !12
  %15 = load i8, i8* %14, align 1, !tbaa !13
  %16 = and i8 %15, 7
  %17 = icmp eq i8 %16, 0
  %18 = zext i1 %17 to i32
  br label %99

19:                                               ; preds = %1
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8, !tbaa !12
  %22 = load i8, i8* %21, align 1, !tbaa !13
  %23 = zext i8 %22 to i32
  %24 = mul nuw nsw i32 %23, 10
  %25 = getelementptr inbounds i8, i8* %21, i64 1
  %26 = load i8, i8* %25, align 1, !tbaa !13
  %27 = zext i8 %26 to i32
  %28 = add nuw nsw i32 %24, %27
  %29 = zext i8 %26 to i32
  %30 = mul nuw nsw i32 %29, 10
  %31 = zext i8 %22 to i32
  %32 = add nuw nsw i32 %30, %31
  %33 = and i32 %28, 7
  %34 = icmp eq i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = and i32 %32, 7
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %34, i32 2, i32 1
  %39 = select i1 %37, i32 %38, i32 %35
  br label %99

40:                                               ; preds = %76, %5
  %41 = phi i32 [ 0, %5 ], [ %97, %76 ]
  %42 = shl i64 %3, 32
  %43 = add i64 %42, -4294967296
  %44 = ashr exact i64 %43, 32
  %45 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8, !tbaa !12
  %47 = getelementptr inbounds i8, i8* %46, i64 %44
  %48 = load i8, i8* %47, align 1, !tbaa !13
  %49 = zext i8 %48 to i32
  %50 = mul nuw nsw i32 %49, 100
  %51 = load i8, i8* %46, align 1, !tbaa !13
  %52 = zext i8 %51 to i32
  %53 = mul nuw nsw i32 %52, 10
  %54 = add nuw nsw i32 %53, %50
  %55 = getelementptr inbounds i8, i8* %46, i64 1
  %56 = load i8, i8* %55, align 1, !tbaa !13
  %57 = zext i8 %56 to i32
  %58 = add nuw nsw i32 %54, %57
  %59 = and i32 %58, 7
  %60 = icmp eq i32 %59, 0
  %61 = zext i1 %60 to i32
  %62 = add nuw nsw i32 %41, %61
  %63 = sext i32 %6 to i64
  %64 = getelementptr inbounds i8, i8* %46, i64 %63
  %65 = load i8, i8* %64, align 1, !tbaa !13
  %66 = zext i8 %65 to i32
  %67 = mul nuw nsw i32 %66, 100
  %68 = mul nuw nsw i32 %49, 10
  %69 = zext i8 %51 to i32
  %70 = add nuw nsw i32 %68, %69
  %71 = add nuw nsw i32 %70, %67
  %72 = and i32 %71, 7
  %73 = icmp eq i32 %72, 0
  %74 = zext i1 %73 to i32
  %75 = add nuw nsw i32 %62, %74
  br label %99

76:                                               ; preds = %8, %76
  %77 = phi i64 [ 0, %8 ], [ %83, %76 ]
  %78 = phi i32 [ 0, %8 ], [ %97, %76 ]
  %79 = getelementptr inbounds i8, i8* %10, i64 %77
  %80 = load i8, i8* %79, align 1, !tbaa !13
  %81 = zext i8 %80 to i32
  %82 = mul nuw nsw i32 %81, 100
  %83 = add nuw nsw i64 %77, 1
  %84 = getelementptr inbounds i8, i8* %10, i64 %83
  %85 = load i8, i8* %84, align 1, !tbaa !13
  %86 = zext i8 %85 to i32
  %87 = mul nuw nsw i32 %86, 10
  %88 = add nuw nsw i32 %87, %82
  %89 = add nuw nsw i64 %77, 2
  %90 = getelementptr inbounds i8, i8* %10, i64 %89
  %91 = load i8, i8* %90, align 1, !tbaa !13
  %92 = zext i8 %91 to i32
  %93 = add nuw nsw i32 %88, %92
  %94 = and i32 %93, 7
  %95 = icmp eq i32 %94, 0
  %96 = zext i1 %95 to i32
  %97 = add nuw nsw i32 %78, %96
  %98 = icmp eq i64 %83, %11
  br i1 %98, label %40, label %76, !llvm.loop !14

99:                                               ; preds = %40, %19, %12
  %100 = phi i32 [ %18, %12 ], [ %39, %19 ], [ %75, %40 ]
  ret i32 %100
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_COUNT_ROTATIONS_DIVISIBLE_8_processed.cpp() #4 section ".text.startup" {
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
