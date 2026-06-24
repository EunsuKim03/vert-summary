; ModuleID = 'benchmark/cpp_transcoder/FIND_ONE_EXTRA_CHARACTER_STRING_1/FIND_ONE_EXTRA_CHARACTER_STRING_1_processed.cpp'
source_filename = "benchmark/cpp_transcoder/FIND_ONE_EXTRA_CHARACTER_STRING_1/FIND_ONE_EXTRA_CHARACTER_STRING_1_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_FIND_ONE_EXTRA_CHARACTER_STRING_1_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef signext i8 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(%"class.std::__cxx11::basic_string"* nocapture noundef readonly %0, %"class.std::__cxx11::basic_string"* nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  %4 = load i64, i64* %3, align 8, !tbaa !5
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %75, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8, !tbaa !12
  %9 = icmp ult i64 %4, 8
  br i1 %9, label %72, label %10

10:                                               ; preds = %6
  %11 = and i64 %4, -8
  %12 = add i64 %11, -8
  %13 = lshr exact i64 %12, 3
  %14 = add nuw nsw i64 %13, 1
  %15 = and i64 %14, 1
  %16 = icmp eq i64 %12, 0
  br i1 %16, label %48, label %17

17:                                               ; preds = %10
  %18 = and i64 %14, 4611686018427387902
  br label %19

19:                                               ; preds = %19, %17
  %20 = phi i64 [ 0, %17 ], [ %45, %19 ]
  %21 = phi <4 x i32> [ zeroinitializer, %17 ], [ %43, %19 ]
  %22 = phi <4 x i32> [ zeroinitializer, %17 ], [ %44, %19 ]
  %23 = phi i64 [ 0, %17 ], [ %46, %19 ]
  %24 = getelementptr inbounds i8, i8* %8, i64 %20
  %25 = bitcast i8* %24 to <4 x i8>*
  %26 = load <4 x i8>, <4 x i8>* %25, align 1, !tbaa !13
  %27 = getelementptr inbounds i8, i8* %24, i64 4
  %28 = bitcast i8* %27 to <4 x i8>*
  %29 = load <4 x i8>, <4 x i8>* %28, align 1, !tbaa !13
  %30 = zext <4 x i8> %26 to <4 x i32>
  %31 = zext <4 x i8> %29 to <4 x i32>
  %32 = xor <4 x i32> %21, %30
  %33 = xor <4 x i32> %22, %31
  %34 = or i64 %20, 8
  %35 = getelementptr inbounds i8, i8* %8, i64 %34
  %36 = bitcast i8* %35 to <4 x i8>*
  %37 = load <4 x i8>, <4 x i8>* %36, align 1, !tbaa !13
  %38 = getelementptr inbounds i8, i8* %35, i64 4
  %39 = bitcast i8* %38 to <4 x i8>*
  %40 = load <4 x i8>, <4 x i8>* %39, align 1, !tbaa !13
  %41 = zext <4 x i8> %37 to <4 x i32>
  %42 = zext <4 x i8> %40 to <4 x i32>
  %43 = xor <4 x i32> %32, %41
  %44 = xor <4 x i32> %33, %42
  %45 = add nuw i64 %20, 16
  %46 = add i64 %23, 2
  %47 = icmp eq i64 %46, %18
  br i1 %47, label %48, label %19, !llvm.loop !14

48:                                               ; preds = %19, %10
  %49 = phi <4 x i32> [ undef, %10 ], [ %43, %19 ]
  %50 = phi <4 x i32> [ undef, %10 ], [ %44, %19 ]
  %51 = phi i64 [ 0, %10 ], [ %45, %19 ]
  %52 = phi <4 x i32> [ zeroinitializer, %10 ], [ %43, %19 ]
  %53 = phi <4 x i32> [ zeroinitializer, %10 ], [ %44, %19 ]
  %54 = icmp eq i64 %15, 0
  br i1 %54, label %66, label %55

55:                                               ; preds = %48
  %56 = getelementptr inbounds i8, i8* %8, i64 %51
  %57 = bitcast i8* %56 to <4 x i8>*
  %58 = load <4 x i8>, <4 x i8>* %57, align 1, !tbaa !13
  %59 = getelementptr inbounds i8, i8* %56, i64 4
  %60 = bitcast i8* %59 to <4 x i8>*
  %61 = load <4 x i8>, <4 x i8>* %60, align 1, !tbaa !13
  %62 = zext <4 x i8> %58 to <4 x i32>
  %63 = zext <4 x i8> %61 to <4 x i32>
  %64 = xor <4 x i32> %52, %62
  %65 = xor <4 x i32> %53, %63
  br label %66

66:                                               ; preds = %48, %55
  %67 = phi <4 x i32> [ %49, %48 ], [ %64, %55 ]
  %68 = phi <4 x i32> [ %50, %48 ], [ %65, %55 ]
  %69 = xor <4 x i32> %68, %67
  %70 = call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %69)
  %71 = icmp eq i64 %4, %11
  br i1 %71, label %75, label %72

72:                                               ; preds = %6, %66
  %73 = phi i64 [ 0, %6 ], [ %11, %66 ]
  %74 = phi i32 [ 0, %6 ], [ %70, %66 ]
  br label %150

75:                                               ; preds = %150, %66, %2
  %76 = phi i32 [ 0, %2 ], [ %70, %66 ], [ %156, %150 ]
  %77 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 1
  %78 = load i64, i64* %77, align 8, !tbaa !5
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %168, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8, !tbaa !12
  %83 = icmp ult i64 %78, 8
  br i1 %83, label %147, label %84

84:                                               ; preds = %80
  %85 = and i64 %78, -8
  %86 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %76, i64 0
  %87 = add i64 %85, -8
  %88 = lshr exact i64 %87, 3
  %89 = add nuw nsw i64 %88, 1
  %90 = and i64 %89, 1
  %91 = icmp eq i64 %87, 0
  br i1 %91, label %123, label %92

92:                                               ; preds = %84
  %93 = and i64 %89, 4611686018427387902
  br label %94

94:                                               ; preds = %94, %92
  %95 = phi i64 [ 0, %92 ], [ %120, %94 ]
  %96 = phi <4 x i32> [ %86, %92 ], [ %118, %94 ]
  %97 = phi <4 x i32> [ zeroinitializer, %92 ], [ %119, %94 ]
  %98 = phi i64 [ 0, %92 ], [ %121, %94 ]
  %99 = getelementptr inbounds i8, i8* %82, i64 %95
  %100 = bitcast i8* %99 to <4 x i8>*
  %101 = load <4 x i8>, <4 x i8>* %100, align 1, !tbaa !13
  %102 = getelementptr inbounds i8, i8* %99, i64 4
  %103 = bitcast i8* %102 to <4 x i8>*
  %104 = load <4 x i8>, <4 x i8>* %103, align 1, !tbaa !13
  %105 = zext <4 x i8> %101 to <4 x i32>
  %106 = zext <4 x i8> %104 to <4 x i32>
  %107 = xor <4 x i32> %96, %105
  %108 = xor <4 x i32> %97, %106
  %109 = or i64 %95, 8
  %110 = getelementptr inbounds i8, i8* %82, i64 %109
  %111 = bitcast i8* %110 to <4 x i8>*
  %112 = load <4 x i8>, <4 x i8>* %111, align 1, !tbaa !13
  %113 = getelementptr inbounds i8, i8* %110, i64 4
  %114 = bitcast i8* %113 to <4 x i8>*
  %115 = load <4 x i8>, <4 x i8>* %114, align 1, !tbaa !13
  %116 = zext <4 x i8> %112 to <4 x i32>
  %117 = zext <4 x i8> %115 to <4 x i32>
  %118 = xor <4 x i32> %107, %116
  %119 = xor <4 x i32> %108, %117
  %120 = add nuw i64 %95, 16
  %121 = add i64 %98, 2
  %122 = icmp eq i64 %121, %93
  br i1 %122, label %123, label %94, !llvm.loop !17

123:                                              ; preds = %94, %84
  %124 = phi <4 x i32> [ undef, %84 ], [ %118, %94 ]
  %125 = phi <4 x i32> [ undef, %84 ], [ %119, %94 ]
  %126 = phi i64 [ 0, %84 ], [ %120, %94 ]
  %127 = phi <4 x i32> [ %86, %84 ], [ %118, %94 ]
  %128 = phi <4 x i32> [ zeroinitializer, %84 ], [ %119, %94 ]
  %129 = icmp eq i64 %90, 0
  br i1 %129, label %141, label %130

130:                                              ; preds = %123
  %131 = getelementptr inbounds i8, i8* %82, i64 %126
  %132 = bitcast i8* %131 to <4 x i8>*
  %133 = load <4 x i8>, <4 x i8>* %132, align 1, !tbaa !13
  %134 = getelementptr inbounds i8, i8* %131, i64 4
  %135 = bitcast i8* %134 to <4 x i8>*
  %136 = load <4 x i8>, <4 x i8>* %135, align 1, !tbaa !13
  %137 = zext <4 x i8> %133 to <4 x i32>
  %138 = zext <4 x i8> %136 to <4 x i32>
  %139 = xor <4 x i32> %127, %137
  %140 = xor <4 x i32> %128, %138
  br label %141

141:                                              ; preds = %123, %130
  %142 = phi <4 x i32> [ %124, %123 ], [ %139, %130 ]
  %143 = phi <4 x i32> [ %125, %123 ], [ %140, %130 ]
  %144 = xor <4 x i32> %143, %142
  %145 = call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %144)
  %146 = icmp eq i64 %78, %85
  br i1 %146, label %168, label %147

147:                                              ; preds = %80, %141
  %148 = phi i64 [ 0, %80 ], [ %85, %141 ]
  %149 = phi i32 [ %76, %80 ], [ %145, %141 ]
  br label %159

150:                                              ; preds = %72, %150
  %151 = phi i64 [ %157, %150 ], [ %73, %72 ]
  %152 = phi i32 [ %156, %150 ], [ %74, %72 ]
  %153 = getelementptr inbounds i8, i8* %8, i64 %151
  %154 = load i8, i8* %153, align 1, !tbaa !13
  %155 = zext i8 %154 to i32
  %156 = xor i32 %152, %155
  %157 = add nuw nsw i64 %151, 1
  %158 = icmp eq i64 %157, %4
  br i1 %158, label %75, label %150, !llvm.loop !18

159:                                              ; preds = %147, %159
  %160 = phi i64 [ %166, %159 ], [ %148, %147 ]
  %161 = phi i32 [ %165, %159 ], [ %149, %147 ]
  %162 = getelementptr inbounds i8, i8* %82, i64 %160
  %163 = load i8, i8* %162, align 1, !tbaa !13
  %164 = zext i8 %163 to i32
  %165 = xor i32 %161, %164
  %166 = add nuw nsw i64 %160, 1
  %167 = icmp eq i64 %166, %78
  br i1 %167, label %168, label %159, !llvm.loop !20

168:                                              ; preds = %159, %141, %75
  %169 = phi i32 [ %76, %75 ], [ %145, %141 ], [ %165, %159 ]
  %170 = trunc i32 %169 to i8
  ret i8 %170
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_FIND_ONE_EXTRA_CHARACTER_STRING_1_processed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.xor.v4i32(<4 x i32>) #5

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind readnone willreturn }
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
!14 = distinct !{!14, !15, !16}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = distinct !{!17, !15, !16}
!18 = distinct !{!18, !15, !19, !16}
!19 = !{!"llvm.loop.unroll.runtime.disable"}
!20 = distinct !{!20, !15, !19, !16}
