; ModuleID = 'llvm/cpp_transcoder/LCS_FORMED_CONSECUTIVE_SEGMENTS_LEAST_LENGTH_K/LCS_FORMED_CONSECUTIVE_SEGMENTS_LEAST_LENGTH_K_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/LCS_FORMED_CONSECUTIVE_SEGMENTS_LEAST_LENGTH_K/LCS_FORMED_CONSECUTIVE_SEGMENTS_LEAST_LENGTH_K_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_LCS_FORMED_CONSECUTIVE_SEGMENTS_LEAST_LENGTH_K_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(i32 noundef %0, %"class.std::__cxx11::basic_string"* nocapture noundef readonly %1, %"class.std::__cxx11::basic_string"* nocapture noundef readonly %2) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 1
  %5 = load i64, i64* %4, align 8, !tbaa !5
  %6 = trunc i64 %5 to i32
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 1
  %8 = load i64, i64* %7, align 8, !tbaa !5
  %9 = add i64 %5, 1
  %10 = and i64 %9, 4294967295
  %11 = add i64 %8, 1
  %12 = and i64 %11, 4294967295
  %13 = mul nuw i64 %12, %10
  %14 = alloca i32, i64 %13, align 16
  %15 = alloca i32, i64 %13, align 16
  %16 = bitcast i32* %14 to i8*
  %17 = shl nuw i64 %13, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %16, i8 0, i64 %17, i1 false)
  %18 = bitcast i32* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %18, i8 0, i64 %17, i1 false)
  %19 = icmp slt i32 %6, 1
  br i1 %19, label %50, label %20

20:                                               ; preds = %3
  %21 = trunc i64 %8 to i32
  %22 = icmp slt i32 %21, 1
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %24 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 0, i32 0
  %25 = sext i32 %0 to i64
  %26 = add i64 %8, 1
  %27 = add i64 %5, 1
  %28 = and i64 %27, 4294967295
  %29 = and i64 %26, 4294967295
  %30 = sub i32 1, %0
  %31 = add nsw i64 %25, 1
  br label %32

32:                                               ; preds = %20, %59
  %33 = phi i64 [ 1, %20 ], [ %60, %59 ]
  br i1 %22, label %59, label %34

34:                                               ; preds = %32
  %35 = add nsw i64 %33, -1
  %36 = mul nuw nsw i64 %12, %35
  %37 = getelementptr inbounds i32, i32* %14, i64 %36
  %38 = mul nuw nsw i64 %12, %33
  %39 = getelementptr inbounds i32, i32* %14, i64 %38
  %40 = load i8*, i8** %23, align 8, !tbaa !12
  %41 = getelementptr inbounds i8, i8* %40, i64 %35
  %42 = load i8, i8* %41, align 1, !tbaa !13
  %43 = load i8*, i8** %24, align 8, !tbaa !12
  %44 = getelementptr inbounds i32, i32* %15, i64 %36
  %45 = getelementptr inbounds i32, i32* %15, i64 %38
  %46 = load i32, i32* %39, align 4
  %47 = sub nsw i64 %33, %25
  %48 = mul nsw i64 %12, %47
  %49 = getelementptr inbounds i32, i32* %14, i64 %48
  br label %62

50:                                               ; preds = %59, %3
  %51 = shl i64 %5, 32
  %52 = ashr exact i64 %51, 32
  %53 = mul nsw i64 %12, %52
  %54 = getelementptr inbounds i32, i32* %14, i64 %53
  %55 = shl i64 %8, 32
  %56 = ashr exact i64 %55, 32
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4, !tbaa !14
  ret i32 %58

59:                                               ; preds = %129, %32
  %60 = add nuw nsw i64 %33, 1
  %61 = icmp eq i64 %60, %28
  br i1 %61, label %50, label %32, !llvm.loop !16

62:                                               ; preds = %34, %129
  %63 = phi i32 [ %46, %34 ], [ %130, %129 ]
  %64 = phi i64 [ 1, %34 ], [ %131, %129 ]
  %65 = getelementptr inbounds i32, i32* %37, i64 %64
  %66 = add nsw i64 %64, -1
  %67 = load i32, i32* %65, align 4
  %68 = icmp slt i32 %67, %63
  %69 = select i1 %68, i32 %63, i32 %67
  %70 = getelementptr inbounds i32, i32* %39, i64 %64
  store i32 %69, i32* %70, align 4, !tbaa !14
  %71 = getelementptr inbounds i8, i8* %43, i64 %66
  %72 = load i8, i8* %71, align 1, !tbaa !13
  %73 = icmp eq i8 %42, %72
  br i1 %73, label %77, label %74

74:                                               ; preds = %62
  %75 = getelementptr inbounds i32, i32* %45, i64 %64
  %76 = load i32, i32* %75, align 4, !tbaa !14
  br label %82

77:                                               ; preds = %62
  %78 = getelementptr inbounds i32, i32* %44, i64 %66
  %79 = load i32, i32* %78, align 4, !tbaa !14
  %80 = add nsw i32 %79, 1
  %81 = getelementptr inbounds i32, i32* %45, i64 %64
  store i32 %80, i32* %81, align 4, !tbaa !14
  br label %82

82:                                               ; preds = %74, %77
  %83 = phi i32 [ %76, %74 ], [ %80, %77 ]
  %84 = icmp slt i32 %83, %0
  br i1 %84, label %129, label %85

85:                                               ; preds = %82
  %86 = add i32 %83, 1
  %87 = add i32 %30, %83
  %88 = and i32 %87, 1
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %85
  %91 = sub nsw i64 %64, %25
  %92 = getelementptr inbounds i32, i32* %49, i64 %91
  %93 = load i32, i32* %92, align 4, !tbaa !14
  %94 = add nsw i32 %93, %0
  %95 = icmp slt i32 %69, %94
  %96 = select i1 %95, i32 %94, i32 %69
  store i32 %96, i32* %70, align 4, !tbaa !14
  br label %97

97:                                               ; preds = %90, %85
  %98 = phi i32 [ undef, %85 ], [ %96, %90 ]
  %99 = phi i32 [ %69, %85 ], [ %96, %90 ]
  %100 = phi i64 [ %25, %85 ], [ %31, %90 ]
  %101 = icmp eq i32 %83, %0
  br i1 %101, label %129, label %102

102:                                              ; preds = %97, %102
  %103 = phi i32 [ %125, %102 ], [ %99, %97 ]
  %104 = phi i64 [ %126, %102 ], [ %100, %97 ]
  %105 = sub nsw i64 %33, %104
  %106 = mul nsw i64 %12, %105
  %107 = getelementptr inbounds i32, i32* %14, i64 %106
  %108 = sub nsw i64 %64, %104
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  %110 = load i32, i32* %109, align 4, !tbaa !14
  %111 = trunc i64 %104 to i32
  %112 = add nsw i32 %110, %111
  %113 = icmp slt i32 %103, %112
  %114 = select i1 %113, i32 %112, i32 %103
  store i32 %114, i32* %70, align 4, !tbaa !14
  %115 = add nsw i64 %104, 1
  %116 = sub nsw i64 %33, %115
  %117 = mul nsw i64 %12, %116
  %118 = getelementptr inbounds i32, i32* %14, i64 %117
  %119 = sub nsw i64 %64, %115
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  %121 = load i32, i32* %120, align 4, !tbaa !14
  %122 = trunc i64 %115 to i32
  %123 = add nsw i32 %121, %122
  %124 = icmp slt i32 %114, %123
  %125 = select i1 %124, i32 %123, i32 %114
  store i32 %125, i32* %70, align 4, !tbaa !14
  %126 = add nsw i64 %104, 2
  %127 = trunc i64 %126 to i32
  %128 = icmp eq i32 %86, %127
  br i1 %128, label %129, label %102, !llvm.loop !18

129:                                              ; preds = %97, %102, %82
  %130 = phi i32 [ %69, %82 ], [ %98, %97 ], [ %125, %102 ]
  %131 = add nuw nsw i64 %64, 1
  %132 = icmp eq i64 %131, %29
  br i1 %132, label %59, label %62, !llvm.loop !19
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_LCS_FORMED_CONSECUTIVE_SEGMENTS_LEAST_LENGTH_K_reprocessed.cpp() #5 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!12 = !{!6, !8, i64 0}
!13 = !{!9, !9, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !9, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17}
!19 = distinct !{!19, !17}
