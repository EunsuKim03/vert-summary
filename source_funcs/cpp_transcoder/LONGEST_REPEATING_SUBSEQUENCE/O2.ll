; ModuleID = 'benchmark/cpp_transcoder/LONGEST_REPEATING_SUBSEQUENCE/LONGEST_REPEATING_SUBSEQUENCE_processed.cpp'
source_filename = "benchmark/cpp_transcoder/LONGEST_REPEATING_SUBSEQUENCE/LONGEST_REPEATING_SUBSEQUENCE_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_LONGEST_REPEATING_SUBSEQUENCE_processed.cpp, i8* null }]

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
  %5 = add i64 %3, 1
  %6 = and i64 %5, 4294967295
  %7 = mul nuw i64 %6, %6
  %8 = alloca i32, i64 %7, align 16
  %9 = icmp slt i32 %4, 0
  br i1 %9, label %84, label %10

10:                                               ; preds = %1
  %11 = shl nuw nsw i64 %6, 2
  %12 = add i64 %3, 1
  %13 = and i64 %12, 4294967295
  %14 = add nsw i64 %13, -1
  %15 = and i64 %12, 7
  %16 = icmp ult i64 %14, 7
  br i1 %16, label %19, label %17

17:                                               ; preds = %10
  %18 = sub nsw i64 %13, %15
  br label %38

19:                                               ; preds = %38, %10
  %20 = phi i64 [ 0, %10 ], [ %72, %38 ]
  %21 = icmp eq i64 %15, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %19, %22
  %23 = phi i64 [ %28, %22 ], [ %20, %19 ]
  %24 = phi i64 [ %29, %22 ], [ 0, %19 ]
  %25 = mul nuw nsw i64 %6, %23
  %26 = getelementptr i32, i32* %8, i64 %25
  %27 = bitcast i32* %26 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %27, i8 0, i64 %11, i1 false), !tbaa !12
  %28 = add nuw nsw i64 %23, 1
  %29 = add i64 %24, 1
  %30 = icmp eq i64 %29, %15
  br i1 %30, label %31, label %22, !llvm.loop !14

31:                                               ; preds = %22, %19
  %32 = icmp slt i32 %4, 1
  br i1 %32, label %84, label %33

33:                                               ; preds = %31
  %34 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %35 = add i64 %3, 1
  %36 = and i64 %35, 4294967295
  %37 = load i8*, i8** %34, align 8, !tbaa !16
  br label %75

38:                                               ; preds = %38, %17
  %39 = phi i64 [ 0, %17 ], [ %72, %38 ]
  %40 = phi i64 [ 0, %17 ], [ %73, %38 ]
  %41 = mul nuw nsw i64 %6, %39
  %42 = getelementptr i32, i32* %8, i64 %41
  %43 = bitcast i32* %42 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %43, i8 0, i64 %11, i1 false), !tbaa !12
  %44 = or i64 %39, 1
  %45 = mul nuw nsw i64 %6, %44
  %46 = getelementptr i32, i32* %8, i64 %45
  %47 = bitcast i32* %46 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %47, i8 0, i64 %11, i1 false), !tbaa !12
  %48 = or i64 %39, 2
  %49 = mul nuw nsw i64 %6, %48
  %50 = getelementptr i32, i32* %8, i64 %49
  %51 = bitcast i32* %50 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %51, i8 0, i64 %11, i1 false), !tbaa !12
  %52 = or i64 %39, 3
  %53 = mul nuw nsw i64 %6, %52
  %54 = getelementptr i32, i32* %8, i64 %53
  %55 = bitcast i32* %54 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %55, i8 0, i64 %11, i1 false), !tbaa !12
  %56 = or i64 %39, 4
  %57 = mul nuw nsw i64 %6, %56
  %58 = getelementptr i32, i32* %8, i64 %57
  %59 = bitcast i32* %58 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %59, i8 0, i64 %11, i1 false), !tbaa !12
  %60 = or i64 %39, 5
  %61 = mul nuw nsw i64 %6, %60
  %62 = getelementptr i32, i32* %8, i64 %61
  %63 = bitcast i32* %62 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %63, i8 0, i64 %11, i1 false), !tbaa !12
  %64 = or i64 %39, 6
  %65 = mul nuw nsw i64 %6, %64
  %66 = getelementptr i32, i32* %8, i64 %65
  %67 = bitcast i32* %66 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %67, i8 0, i64 %11, i1 false), !tbaa !12
  %68 = or i64 %39, 7
  %69 = mul nuw nsw i64 %6, %68
  %70 = getelementptr i32, i32* %8, i64 %69
  %71 = bitcast i32* %70 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %71, i8 0, i64 %11, i1 false), !tbaa !12
  %72 = add nuw nsw i64 %39, 8
  %73 = add i64 %40, 8
  %74 = icmp eq i64 %73, %18
  br i1 %74, label %19, label %38, !llvm.loop !17

75:                                               ; preds = %91, %33
  %76 = phi i64 [ 1, %33 ], [ %92, %91 ]
  %77 = add nsw i64 %76, -1
  %78 = getelementptr inbounds i8, i8* %37, i64 %77
  %79 = load i8, i8* %78, align 1, !tbaa !19
  %80 = mul nuw nsw i64 %6, %77
  %81 = getelementptr inbounds i32, i32* %8, i64 %80
  %82 = mul nuw nsw i64 %6, %76
  %83 = getelementptr inbounds i32, i32* %8, i64 %82
  br label %94

84:                                               ; preds = %91, %1, %31
  %85 = shl i64 %3, 32
  %86 = ashr exact i64 %85, 32
  %87 = mul nsw i64 %86, %6
  %88 = getelementptr inbounds i32, i32* %8, i64 %87
  %89 = getelementptr inbounds i32, i32* %88, i64 %86
  %90 = load i32, i32* %89, align 4, !tbaa !12
  ret i32 %90

91:                                               ; preds = %113
  %92 = add nuw nsw i64 %76, 1
  %93 = icmp eq i64 %92, %36
  br i1 %93, label %84, label %75, !llvm.loop !20

94:                                               ; preds = %75, %113
  %95 = phi i64 [ 1, %75 ], [ %116, %113 ]
  %96 = add nsw i64 %95, -1
  %97 = getelementptr inbounds i8, i8* %37, i64 %96
  %98 = load i8, i8* %97, align 1, !tbaa !19
  %99 = icmp ne i8 %79, %98
  %100 = icmp eq i64 %76, %95
  %101 = select i1 %99, i1 true, i1 %100
  br i1 %101, label %106, label %102

102:                                              ; preds = %94
  %103 = getelementptr inbounds i32, i32* %81, i64 %96
  %104 = load i32, i32* %103, align 4, !tbaa !12
  %105 = add nsw i32 %104, 1
  br label %113

106:                                              ; preds = %94
  %107 = getelementptr inbounds i32, i32* %83, i64 %96
  %108 = getelementptr inbounds i32, i32* %81, i64 %95
  %109 = load i32, i32* %107, align 4
  %110 = load i32, i32* %108, align 4
  %111 = icmp slt i32 %109, %110
  %112 = select i1 %111, i32 %110, i32 %109
  br label %113

113:                                              ; preds = %102, %106
  %114 = phi i32 [ %105, %102 ], [ %112, %106 ]
  %115 = getelementptr inbounds i32, i32* %83, i64 %95
  store i32 %114, i32* %115, align 4, !tbaa !12
  %116 = add nuw nsw i64 %95, 1
  %117 = icmp eq i64 %116, %36
  br i1 %117, label %91, label %94, !llvm.loop !21
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_LONGEST_REPEATING_SUBSEQUENCE_processed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
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
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !9, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = !{!6, !8, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!9, !9, i64 0}
!20 = distinct !{!20, !18}
!21 = distinct !{!21, !18}
