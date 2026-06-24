; ModuleID = 'llvm/cpp_transcoder/SUM_TWO_LARGE_NUMBERS/SUM_TWO_LARGE_NUMBERS_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/SUM_TWO_LARGE_NUMBERS/SUM_TWO_LARGE_NUMBERS_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_SUM_TWO_LARGE_NUMBERS_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: uwtable
define dso_local void @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, %"class.std::__cxx11::basic_string"* noundef %1, %"class.std::__cxx11::basic_string"* noundef %2) local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 1
  %5 = load i64, i64* %4, align 8, !tbaa !5
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 1
  %7 = load i64, i64* %6, align 8, !tbaa !5
  %8 = icmp ugt i64 %5, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %1, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %2) #5
  %10 = load i64, i64* %4, align 8, !tbaa !5
  %11 = load i64, i64* %6, align 8, !tbaa !5
  br label %12

12:                                               ; preds = %9, %3
  %13 = phi i64 [ %11, %9 ], [ %7, %3 ]
  %14 = phi i64 [ %10, %9 ], [ %5, %3 ]
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %16 = bitcast %"class.std::__cxx11::basic_string"* %0 to %union.anon**
  store %union.anon* %15, %union.anon** %16, align 8, !tbaa !12
  %17 = bitcast %union.anon* %15 to i8*
  %18 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %19 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  store i64 0, i64* %19, align 8, !tbaa !5
  store i8 0, i8* %17, align 8, !tbaa !13
  %20 = trunc i64 %14 to i32
  %21 = trunc i64 %13 to i32
  %22 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8, !tbaa !14
  %24 = getelementptr inbounds i8, i8* %23, i64 %14
  %25 = icmp ne i64 %14, 0
  %26 = getelementptr inbounds i8, i8* %24, i64 -1
  %27 = icmp ugt i8* %26, %23
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %29, label %39

29:                                               ; preds = %12, %29
  %30 = phi i8* [ %35, %29 ], [ %26, %12 ]
  %31 = phi i8* [ %34, %29 ], [ %23, %12 ]
  %32 = load i8, i8* %31, align 1, !tbaa !13
  %33 = load i8, i8* %30, align 1, !tbaa !13
  store i8 %33, i8* %31, align 1, !tbaa !13
  store i8 %32, i8* %30, align 1, !tbaa !13
  %34 = getelementptr inbounds i8, i8* %31, i64 1
  %35 = getelementptr inbounds i8, i8* %30, i64 -1
  %36 = icmp ult i8* %34, %35
  br i1 %36, label %29, label %37, !llvm.loop !15

37:                                               ; preds = %29
  %38 = load i64, i64* %6, align 8, !tbaa !5
  br label %39

39:                                               ; preds = %37, %12
  %40 = phi i64 [ %38, %37 ], [ %13, %12 ]
  %41 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8, !tbaa !14
  %43 = getelementptr inbounds i8, i8* %42, i64 %40
  %44 = icmp ne i64 %40, 0
  %45 = getelementptr inbounds i8, i8* %43, i64 -1
  %46 = icmp ugt i8* %45, %42
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %48, label %56

48:                                               ; preds = %39, %48
  %49 = phi i8* [ %54, %48 ], [ %45, %39 ]
  %50 = phi i8* [ %53, %48 ], [ %42, %39 ]
  %51 = load i8, i8* %50, align 1, !tbaa !13
  %52 = load i8, i8* %49, align 1, !tbaa !13
  store i8 %52, i8* %50, align 1, !tbaa !13
  store i8 %51, i8* %49, align 1, !tbaa !13
  %53 = getelementptr inbounds i8, i8* %50, i64 1
  %54 = getelementptr inbounds i8, i8* %49, i64 -1
  %55 = icmp ult i8* %53, %54
  br i1 %55, label %48, label %56, !llvm.loop !15

56:                                               ; preds = %48, %39
  %57 = icmp sgt i32 %20, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %56
  %59 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  %60 = and i64 %14, 4294967295
  br label %68

61:                                               ; preds = %96, %56
  %62 = phi i32 [ 0, %56 ], [ %83, %96 ]
  %63 = icmp slt i32 %20, %21
  br i1 %63, label %64, label %105

64:                                               ; preds = %61
  %65 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  %66 = shl i64 %14, 32
  %67 = ashr exact i64 %66, 32
  br label %108

68:                                               ; preds = %58, %96
  %69 = phi i64 [ 0, %58 ], [ %101, %96 ]
  %70 = phi i32 [ 0, %58 ], [ %83, %96 ]
  %71 = load i8*, i8** %22, align 8, !tbaa !14
  %72 = getelementptr inbounds i8, i8* %71, i64 %69
  %73 = load i8, i8* %72, align 1, !tbaa !13
  %74 = sext i8 %73 to i32
  %75 = load i8*, i8** %41, align 8, !tbaa !14
  %76 = getelementptr inbounds i8, i8* %75, i64 %69
  %77 = load i8, i8* %76, align 1, !tbaa !13
  %78 = sext i8 %77 to i32
  %79 = add nsw i32 %70, -96
  %80 = add nsw i32 %79, %74
  %81 = add nsw i32 %80, %78
  %82 = srem i32 %81, 10
  %83 = sdiv i32 %81, 10
  %84 = trunc i32 %82 to i8
  %85 = add nsw i8 %84, 48
  %86 = load i64, i64* %19, align 8, !tbaa !5
  %87 = add i64 %86, 1
  %88 = load i8*, i8** %18, align 8, !tbaa !14
  %89 = icmp eq i8* %88, %17
  %90 = load i64, i64* %59, align 8
  %91 = select i1 %89, i64 15, i64 %90
  %92 = icmp ugt i64 %87, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %68
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %86, i64 noundef 0, i8* noundef null, i64 noundef 1)
          to label %94 unwind label %103

94:                                               ; preds = %93
  %95 = load i8*, i8** %18, align 8, !tbaa !14
  br label %96

96:                                               ; preds = %94, %68
  %97 = phi i8* [ %95, %94 ], [ %88, %68 ]
  %98 = getelementptr inbounds i8, i8* %97, i64 %86
  store i8 %85, i8* %98, align 1, !tbaa !13
  store i64 %87, i64* %19, align 8, !tbaa !5
  %99 = load i8*, i8** %18, align 8, !tbaa !14
  %100 = getelementptr inbounds i8, i8* %99, i64 %87
  store i8 0, i8* %100, align 1, !tbaa !13
  %101 = add nuw nsw i64 %69, 1
  %102 = icmp eq i64 %101, %60
  br i1 %102, label %61, label %68, !llvm.loop !17

103:                                              ; preds = %93
  %104 = landingpad { i8*, i32 }
          cleanup
  br label %178

105:                                              ; preds = %131, %61
  %106 = phi i32 [ %62, %61 ], [ %118, %131 ]
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %162, label %141

108:                                              ; preds = %64, %131
  %109 = phi i64 [ %67, %64 ], [ %136, %131 ]
  %110 = phi i32 [ %62, %64 ], [ %118, %131 ]
  %111 = load i8*, i8** %41, align 8, !tbaa !14
  %112 = getelementptr inbounds i8, i8* %111, i64 %109
  %113 = load i8, i8* %112, align 1, !tbaa !13
  %114 = sext i8 %113 to i32
  %115 = add nsw i32 %110, -48
  %116 = add nsw i32 %115, %114
  %117 = srem i32 %116, 10
  %118 = sdiv i32 %116, 10
  %119 = trunc i32 %117 to i8
  %120 = add nsw i8 %119, 48
  %121 = load i64, i64* %19, align 8, !tbaa !5
  %122 = add i64 %121, 1
  %123 = load i8*, i8** %18, align 8, !tbaa !14
  %124 = icmp eq i8* %123, %17
  %125 = load i64, i64* %65, align 8
  %126 = select i1 %124, i64 15, i64 %125
  %127 = icmp ugt i64 %122, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %108
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %121, i64 noundef 0, i8* noundef null, i64 noundef 1)
          to label %129 unwind label %139

129:                                              ; preds = %128
  %130 = load i8*, i8** %18, align 8, !tbaa !14
  br label %131

131:                                              ; preds = %129, %108
  %132 = phi i8* [ %130, %129 ], [ %123, %108 ]
  %133 = getelementptr inbounds i8, i8* %132, i64 %121
  store i8 %120, i8* %133, align 1, !tbaa !13
  store i64 %122, i64* %19, align 8, !tbaa !5
  %134 = load i8*, i8** %18, align 8, !tbaa !14
  %135 = getelementptr inbounds i8, i8* %134, i64 %122
  store i8 0, i8* %135, align 1, !tbaa !13
  %136 = add nsw i64 %109, 1
  %137 = trunc i64 %136 to i32
  %138 = icmp eq i32 %137, %21
  br i1 %138, label %105, label %108, !llvm.loop !18

139:                                              ; preds = %128
  %140 = landingpad { i8*, i32 }
          cleanup
  br label %178

141:                                              ; preds = %105
  %142 = trunc i32 %106 to i8
  %143 = add i8 %142, 48
  %144 = load i64, i64* %19, align 8, !tbaa !5
  %145 = add i64 %144, 1
  %146 = load i8*, i8** %18, align 8, !tbaa !14
  %147 = icmp eq i8* %146, %17
  %148 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = select i1 %147, i64 15, i64 %149
  %151 = icmp ugt i64 %145, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %141
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %144, i64 noundef 0, i8* noundef null, i64 noundef 1)
          to label %153 unwind label %160

153:                                              ; preds = %152
  %154 = load i8*, i8** %18, align 8, !tbaa !14
  br label %155

155:                                              ; preds = %141, %153
  %156 = phi i8* [ %154, %153 ], [ %146, %141 ]
  %157 = getelementptr inbounds i8, i8* %156, i64 %144
  store i8 %143, i8* %157, align 1, !tbaa !13
  store i64 %145, i64* %19, align 8, !tbaa !5
  %158 = load i8*, i8** %18, align 8, !tbaa !14
  %159 = getelementptr inbounds i8, i8* %158, i64 %145
  store i8 0, i8* %159, align 1, !tbaa !13
  br label %162

160:                                              ; preds = %152
  %161 = landingpad { i8*, i32 }
          cleanup
  br label %178

162:                                              ; preds = %155, %105
  %163 = load i8*, i8** %18, align 8, !tbaa !14
  %164 = load i64, i64* %19, align 8, !tbaa !5
  %165 = getelementptr inbounds i8, i8* %163, i64 %164
  %166 = icmp ne i64 %164, 0
  %167 = getelementptr inbounds i8, i8* %165, i64 -1
  %168 = icmp ugt i8* %167, %163
  %169 = select i1 %166, i1 %168, i1 false
  br i1 %169, label %170, label %183

170:                                              ; preds = %162, %170
  %171 = phi i8* [ %176, %170 ], [ %167, %162 ]
  %172 = phi i8* [ %175, %170 ], [ %163, %162 ]
  %173 = load i8, i8* %172, align 1, !tbaa !13
  %174 = load i8, i8* %171, align 1, !tbaa !13
  store i8 %174, i8* %172, align 1, !tbaa !13
  store i8 %173, i8* %171, align 1, !tbaa !13
  %175 = getelementptr inbounds i8, i8* %172, i64 1
  %176 = getelementptr inbounds i8, i8* %171, i64 -1
  %177 = icmp ult i8* %175, %176
  br i1 %177, label %170, label %183, !llvm.loop !15

178:                                              ; preds = %103, %139, %160
  %179 = phi { i8*, i32 } [ %104, %103 ], [ %140, %139 ], [ %161, %160 ]
  %180 = load i8*, i8** %18, align 8, !tbaa !14
  %181 = icmp eq i8* %180, %17
  br i1 %181, label %184, label %182

182:                                              ; preds = %178
  tail call void @_ZdlPv(i8* noundef %180) #5
  br label %184

183:                                              ; preds = %170, %162
  ret void

184:                                              ; preds = %182, %178
  resume { i8*, i32 } %179
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_SUM_TWO_LARGE_NUMBERS_reprocessed.cpp() #3 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #5
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!12 = !{!7, !8, i64 0}
!13 = !{!9, !9, i64 0}
!14 = !{!6, !8, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !16}
