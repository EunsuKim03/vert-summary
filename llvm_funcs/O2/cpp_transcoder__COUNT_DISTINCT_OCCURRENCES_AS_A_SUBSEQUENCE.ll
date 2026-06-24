; ModuleID = 'benchmark/cpp_transcoder/COUNT_DISTINCT_OCCURRENCES_AS_A_SUBSEQUENCE/COUNT_DISTINCT_OCCURRENCES_AS_A_SUBSEQUENCE_processed.cpp'
source_filename = "benchmark/cpp_transcoder/COUNT_DISTINCT_OCCURRENCES_AS_A_SUBSEQUENCE/COUNT_DISTINCT_OCCURRENCES_AS_A_SUBSEQUENCE_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_COUNT_DISTINCT_OCCURRENCES_AS_A_SUBSEQUENCE_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(%"class.std::__cxx11::basic_string"* nocapture noundef readonly %0, %"class.std::__cxx11::basic_string"* nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 1
  %4 = load i64, i64* %3, align 8, !tbaa !5
  %5 = trunc i64 %4 to i32
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  %7 = load i64, i64* %6, align 8, !tbaa !5
  %8 = trunc i64 %7 to i32
  %9 = icmp sgt i32 %5, %8
  br i1 %9, label %170, label %10

10:                                               ; preds = %2
  %11 = add i64 %4, 1
  %12 = and i64 %11, 4294967295
  %13 = add i64 %7, 1
  %14 = and i64 %13, 4294967295
  %15 = tail call i8* @llvm.stacksave()
  %16 = mul nuw i64 %14, %12
  %17 = alloca i32, i64 %16, align 16
  %18 = icmp slt i32 %5, 1
  br i1 %18, label %39, label %19

19:                                               ; preds = %10
  %20 = add i64 %4, 1
  %21 = and i64 %20, 4294967295
  %22 = add nsw i64 %21, -1
  %23 = add nsw i64 %21, -2
  %24 = and i64 %22, 3
  %25 = icmp ult i64 %23, 3
  br i1 %25, label %28, label %26

26:                                               ; preds = %19
  %27 = and i64 %22, -4
  br label %60

28:                                               ; preds = %60, %19
  %29 = phi i64 [ 1, %19 ], [ %74, %60 ]
  %30 = icmp eq i64 %24, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %28, %31
  %32 = phi i64 [ %36, %31 ], [ %29, %28 ]
  %33 = phi i64 [ %37, %31 ], [ 0, %28 ]
  %34 = mul nuw nsw i64 %14, %32
  %35 = getelementptr inbounds i32, i32* %17, i64 %34
  store i32 0, i32* %35, align 4, !tbaa !12
  %36 = add nuw nsw i64 %32, 1
  %37 = add i64 %33, 1
  %38 = icmp eq i64 %37, %24
  br i1 %38, label %39, label %31, !llvm.loop !14

39:                                               ; preds = %28, %31, %10
  %40 = icmp slt i32 %8, 0
  br i1 %40, label %77, label %41

41:                                               ; preds = %39
  %42 = add i64 %7, 1
  %43 = and i64 %42, 4294967295
  %44 = icmp ult i64 %43, 8
  br i1 %44, label %58, label %45

45:                                               ; preds = %41
  %46 = and i64 %42, 7
  %47 = sub nsw i64 %43, %46
  br label %48

48:                                               ; preds = %48, %45
  %49 = phi i64 [ 0, %45 ], [ %54, %48 ]
  %50 = getelementptr inbounds i32, i32* %17, i64 %49
  %51 = bitcast i32* %50 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %51, align 16, !tbaa !12
  %52 = getelementptr inbounds i32, i32* %50, i64 4
  %53 = bitcast i32* %52 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %53, align 16, !tbaa !12
  %54 = add nuw i64 %49, 8
  %55 = icmp eq i64 %54, %47
  br i1 %55, label %56, label %48, !llvm.loop !16

56:                                               ; preds = %48
  %57 = icmp eq i64 %46, 0
  br i1 %57, label %77, label %58

58:                                               ; preds = %41, %56
  %59 = phi i64 [ 0, %41 ], [ %47, %56 ]
  br label %91

60:                                               ; preds = %60, %26
  %61 = phi i64 [ 1, %26 ], [ %74, %60 ]
  %62 = phi i64 [ 0, %26 ], [ %75, %60 ]
  %63 = mul nuw nsw i64 %14, %61
  %64 = getelementptr inbounds i32, i32* %17, i64 %63
  store i32 0, i32* %64, align 4, !tbaa !12
  %65 = add nuw nsw i64 %61, 1
  %66 = mul nuw nsw i64 %14, %65
  %67 = getelementptr inbounds i32, i32* %17, i64 %66
  store i32 0, i32* %67, align 4, !tbaa !12
  %68 = add nuw nsw i64 %61, 2
  %69 = mul nuw nsw i64 %14, %68
  %70 = getelementptr inbounds i32, i32* %17, i64 %69
  store i32 0, i32* %70, align 4, !tbaa !12
  %71 = add nuw nsw i64 %61, 3
  %72 = mul nuw nsw i64 %14, %71
  %73 = getelementptr inbounds i32, i32* %17, i64 %72
  store i32 0, i32* %73, align 4, !tbaa !12
  %74 = add nuw nsw i64 %61, 4
  %75 = add i64 %62, 4
  %76 = icmp eq i64 %75, %27
  br i1 %76, label %28, label %60, !llvm.loop !19

77:                                               ; preds = %91, %56, %39
  br i1 %18, label %113, label %78

78:                                               ; preds = %77
  %79 = icmp slt i32 %8, 1
  %80 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %81 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %82 = add i64 %7, 1
  %83 = add i64 %4, 1
  %84 = and i64 %83, 4294967295
  %85 = and i64 %82, 4294967295
  %86 = add nsw i64 %85, -1
  %87 = and i64 %86, 1
  %88 = icmp eq i64 %85, 2
  %89 = and i64 %86, -2
  %90 = icmp eq i64 %87, 0
  br label %96

91:                                               ; preds = %58, %91
  %92 = phi i64 [ %94, %91 ], [ %59, %58 ]
  %93 = getelementptr inbounds i32, i32* %17, i64 %92
  store i32 1, i32* %93, align 4, !tbaa !12
  %94 = add nuw nsw i64 %92, 1
  %95 = icmp eq i64 %94, %43
  br i1 %95, label %77, label %91, !llvm.loop !20

96:                                               ; preds = %78, %137
  %97 = phi i64 [ 0, %78 ], [ %140, %137 ]
  %98 = phi i64 [ 1, %78 ], [ %138, %137 ]
  br i1 %79, label %137, label %99

99:                                               ; preds = %96
  %100 = mul i64 %85, %97
  %101 = add i64 %85, %100
  %102 = getelementptr i32, i32* %17, i64 %101
  %103 = add nsw i64 %98, -1
  %104 = load i8*, i8** %80, align 8, !tbaa !22
  %105 = getelementptr inbounds i8, i8* %104, i64 %103
  %106 = load i8, i8* %105, align 1, !tbaa !23
  %107 = load i8*, i8** %81, align 8, !tbaa !22
  %108 = mul nuw nsw i64 %14, %98
  %109 = getelementptr inbounds i32, i32* %17, i64 %108
  %110 = mul nuw nsw i64 %14, %103
  %111 = getelementptr inbounds i32, i32* %17, i64 %110
  %112 = load i32, i32* %102, align 4
  br i1 %88, label %122, label %141

113:                                              ; preds = %137, %77
  %114 = shl i64 %4, 32
  %115 = ashr exact i64 %114, 32
  %116 = mul nsw i64 %14, %115
  %117 = getelementptr inbounds i32, i32* %17, i64 %116
  %118 = shl i64 %7, 32
  %119 = ashr exact i64 %118, 32
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4, !tbaa !12
  tail call void @llvm.stackrestore(i8* %15)
  br label %170

122:                                              ; preds = %164, %99
  %123 = phi i32 [ %112, %99 ], [ %165, %164 ]
  %124 = phi i64 [ 1, %99 ], [ %167, %164 ]
  br i1 %90, label %137, label %125

125:                                              ; preds = %122
  %126 = add nsw i64 %124, -1
  %127 = getelementptr inbounds i8, i8* %107, i64 %126
  %128 = load i8, i8* %127, align 1, !tbaa !23
  %129 = icmp eq i8 %106, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %125
  %131 = getelementptr inbounds i32, i32* %111, i64 %126
  %132 = load i32, i32* %131, align 4, !tbaa !12
  %133 = add nsw i32 %132, %123
  br label %134

134:                                              ; preds = %130, %125
  %135 = phi i32 [ %133, %130 ], [ %123, %125 ]
  %136 = getelementptr inbounds i32, i32* %109, i64 %124
  store i32 %135, i32* %136, align 4, !tbaa !12
  br label %137

137:                                              ; preds = %134, %122, %96
  %138 = add nuw nsw i64 %98, 1
  %139 = icmp eq i64 %138, %84
  %140 = add i64 %97, 1
  br i1 %139, label %113, label %96, !llvm.loop !24

141:                                              ; preds = %99, %164
  %142 = phi i32 [ %165, %164 ], [ %112, %99 ]
  %143 = phi i64 [ %167, %164 ], [ 1, %99 ]
  %144 = phi i64 [ %168, %164 ], [ 0, %99 ]
  %145 = add nsw i64 %143, -1
  %146 = getelementptr inbounds i8, i8* %107, i64 %145
  %147 = load i8, i8* %146, align 1, !tbaa !23
  %148 = icmp eq i8 %106, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %141
  %150 = getelementptr inbounds i32, i32* %111, i64 %145
  %151 = load i32, i32* %150, align 4, !tbaa !12
  %152 = add nsw i32 %151, %142
  br label %153

153:                                              ; preds = %141, %149
  %154 = phi i32 [ %152, %149 ], [ %142, %141 ]
  %155 = getelementptr inbounds i32, i32* %109, i64 %143
  store i32 %154, i32* %155, align 4, !tbaa !12
  %156 = add nuw nsw i64 %143, 1
  %157 = getelementptr inbounds i8, i8* %107, i64 %143
  %158 = load i8, i8* %157, align 1, !tbaa !23
  %159 = icmp eq i8 %106, %158
  br i1 %159, label %160, label %164

160:                                              ; preds = %153
  %161 = getelementptr inbounds i32, i32* %111, i64 %143
  %162 = load i32, i32* %161, align 4, !tbaa !12
  %163 = add nsw i32 %162, %154
  br label %164

164:                                              ; preds = %160, %153
  %165 = phi i32 [ %163, %160 ], [ %154, %153 ]
  %166 = getelementptr inbounds i32, i32* %109, i64 %156
  store i32 %165, i32* %166, align 4, !tbaa !12
  %167 = add nuw nsw i64 %143, 2
  %168 = add i64 %144, 2
  %169 = icmp eq i64 %168, %89
  br i1 %169, label %122, label %141, !llvm.loop !25

170:                                              ; preds = %2, %113
  %171 = phi i32 [ %121, %113 ], [ 0, %2 ]
  ret i32 %171
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #4

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_COUNT_DISTINCT_OCCURRENCES_AS_A_SUBSEQUENCE_processed.cpp() #5 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn }
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
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !9, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = distinct !{!16, !17, !18}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"llvm.loop.isvectorized", i32 1}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !17, !21, !18}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = !{!6, !8, i64 0}
!23 = !{!9, !9, i64 0}
!24 = distinct !{!24, !17}
!25 = distinct !{!25, !17}
