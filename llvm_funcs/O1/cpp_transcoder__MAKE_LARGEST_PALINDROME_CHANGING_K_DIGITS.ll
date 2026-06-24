; ModuleID = 'benchmark/cpp_transcoder/MAKE_LARGEST_PALINDROME_CHANGING_K_DIGITS/MAKE_LARGEST_PALINDROME_CHANGING_K_DIGITS_processed.cpp'
source_filename = "benchmark/cpp_transcoder/MAKE_LARGEST_PALINDROME_CHANGING_K_DIGITS/MAKE_LARGEST_PALINDROME_CHANGING_K_DIGITS_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [13 x i8] c"Not possible\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_MAKE_LARGEST_PALINDROME_CHANGING_K_DIGITS_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: uwtable
define dso_local void @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, %"class.std::__cxx11::basic_string"* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca i64, align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = bitcast %"class.std::__cxx11::basic_string"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #7
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 2
  %8 = bitcast %"class.std::__cxx11::basic_string"* %5 to %union.anon**
  store %union.anon* %7, %union.anon** %8, align 8, !tbaa !5
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8, !tbaa !10
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 1
  %12 = load i64, i64* %11, align 8, !tbaa !13
  %13 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #7
  store i64 %12, i64* %4, align 8, !tbaa !14
  %14 = icmp ugt i64 %12, 15
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = call noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %5, i64* noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 0, i32 0
  store i8* %16, i8** %17, align 8, !tbaa !10
  %18 = load i64, i64* %4, align 8, !tbaa !14
  %19 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 2, i32 0
  store i64 %18, i64* %19, align 8, !tbaa !15
  br label %20

20:                                               ; preds = %15, %3
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8, !tbaa !10
  switch i64 %12, label %25 [
    i64 1, label %23
    i64 0, label %26
  ]

23:                                               ; preds = %20
  %24 = load i8, i8* %10, align 1, !tbaa !15
  store i8 %24, i8* %22, align 1, !tbaa !15
  br label %26

25:                                               ; preds = %20
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %22, i8* align 1 %10, i64 %12, i1 false) #7
  br label %26

26:                                               ; preds = %20, %23, %25
  %27 = load i64, i64* %4, align 8, !tbaa !14
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 1
  store i64 %27, i64* %28, align 8, !tbaa !13
  %29 = load i8*, i8** %21, align 8, !tbaa !10
  %30 = getelementptr inbounds i8, i8* %29, i64 %27
  store i8 0, i8* %30, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #7
  %31 = load i64, i64* %11, align 8, !tbaa !13
  %32 = trunc i64 %31 to i32
  %33 = add i32 %32, -1
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %63

35:                                               ; preds = %26
  %36 = sext i32 %33 to i64
  br label %37

37:                                               ; preds = %35, %56
  %38 = phi i64 [ 0, %35 ], [ %58, %56 ]
  %39 = phi i64 [ %36, %35 ], [ %59, %56 ]
  %40 = phi i32 [ %2, %35 ], [ %57, %56 ]
  %41 = load i8*, i8** %9, align 8, !tbaa !10
  %42 = getelementptr inbounds i8, i8* %41, i64 %38
  %43 = load i8, i8* %42, align 1, !tbaa !15
  %44 = getelementptr inbounds i8, i8* %41, i64 %39
  %45 = load i8, i8* %44, align 1, !tbaa !15
  %46 = icmp eq i8 %43, %45
  br i1 %46, label %56, label %47

47:                                               ; preds = %37
  %48 = icmp slt i8 %43, %45
  %49 = select i1 %48, i8* %44, i8* %42
  %50 = load i8, i8* %49, align 1, !tbaa !15
  %51 = load i8*, i8** %21, align 8, !tbaa !10
  %52 = getelementptr inbounds i8, i8* %51, i64 %39
  store i8 %50, i8* %52, align 1, !tbaa !15
  %53 = load i8*, i8** %21, align 8, !tbaa !10
  %54 = getelementptr inbounds i8, i8* %53, i64 %38
  store i8 %50, i8* %54, align 1, !tbaa !15
  %55 = add nsw i32 %40, -1
  br label %56

56:                                               ; preds = %47, %37
  %57 = phi i32 [ %55, %47 ], [ %40, %37 ]
  %58 = add nuw nsw i64 %38, 1
  %59 = add nsw i64 %39, -1
  %60 = shl i64 %59, 32
  %61 = ashr exact i64 %60, 32
  %62 = icmp slt i64 %58, %61
  br i1 %62, label %37, label %63, !llvm.loop !16

63:                                               ; preds = %56, %26
  %64 = phi i32 [ %2, %26 ], [ %57, %56 ]
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %68 = bitcast %"class.std::__cxx11::basic_string"* %0 to %union.anon**
  store %union.anon* %67, %union.anon** %68, align 8, !tbaa !5
  %69 = bitcast %union.anon* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(12) %69, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 12, i1 false) #7
  %70 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  store i64 12, i64* %70, align 8, !tbaa !13
  %71 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 1, i64 4
  store i8 0, i8* %71, align 4, !tbaa !15
  br label %153

72:                                               ; preds = %63
  %73 = load i64, i64* %11, align 8, !tbaa !13
  %74 = trunc i64 %73 to i32
  %75 = add i32 %74, -1
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %137, label %77

77:                                               ; preds = %72
  %78 = sext i32 %75 to i64
  br label %79

79:                                               ; preds = %77, %130
  %80 = phi i64 [ 0, %77 ], [ %132, %130 ]
  %81 = phi i64 [ %78, %77 ], [ %133, %130 ]
  %82 = phi i32 [ %64, %77 ], [ %131, %130 ]
  %83 = icmp eq i64 %80, %81
  %84 = icmp sgt i32 %82, 0
  %85 = select i1 %83, i1 %84, i1 false
  br i1 %85, label %86, label %89

86:                                               ; preds = %79
  %87 = load i8*, i8** %21, align 8, !tbaa !10
  %88 = getelementptr inbounds i8, i8* %87, i64 %80
  store i8 57, i8* %88, align 1, !tbaa !15
  br label %89

89:                                               ; preds = %86, %79
  %90 = load i8*, i8** %21, align 8, !tbaa !10
  %91 = getelementptr inbounds i8, i8* %90, i64 %80
  %92 = load i8, i8* %91, align 1, !tbaa !15
  %93 = icmp slt i8 %92, 57
  br i1 %93, label %94, label %130

94:                                               ; preds = %89
  %95 = icmp sgt i32 %82, 1
  br i1 %95, label %96, label %110

96:                                               ; preds = %94
  %97 = load i8*, i8** %9, align 8, !tbaa !10
  %98 = getelementptr inbounds i8, i8* %97, i64 %80
  %99 = load i8, i8* %98, align 1, !tbaa !15
  %100 = icmp eq i8 %92, %99
  br i1 %100, label %101, label %110

101:                                              ; preds = %96
  %102 = getelementptr inbounds i8, i8* %90, i64 %81
  %103 = load i8, i8* %102, align 1, !tbaa !15
  %104 = getelementptr inbounds i8, i8* %97, i64 %81
  %105 = load i8, i8* %104, align 1, !tbaa !15
  %106 = icmp eq i8 %103, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = add nsw i32 %82, -2
  store i8 57, i8* %102, align 1, !tbaa !15
  %109 = load i8*, i8** %21, align 8, !tbaa !10
  br label %126

110:                                              ; preds = %101, %96, %94
  br i1 %84, label %111, label %130

111:                                              ; preds = %110
  %112 = load i8*, i8** %9, align 8, !tbaa !10
  %113 = getelementptr inbounds i8, i8* %112, i64 %80
  %114 = load i8, i8* %113, align 1, !tbaa !15
  %115 = icmp eq i8 %92, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %111
  %117 = getelementptr inbounds i8, i8* %90, i64 %81
  %118 = load i8, i8* %117, align 1, !tbaa !15
  %119 = getelementptr inbounds i8, i8* %112, i64 %81
  %120 = load i8, i8* %119, align 1, !tbaa !15
  %121 = icmp eq i8 %118, %120
  br i1 %121, label %130, label %122

122:                                              ; preds = %116, %111
  %123 = add nsw i32 %82, -1
  %124 = getelementptr inbounds i8, i8* %90, i64 %81
  store i8 57, i8* %124, align 1, !tbaa !15
  %125 = load i8*, i8** %21, align 8, !tbaa !10
  br label %126

126:                                              ; preds = %122, %107
  %127 = phi i8* [ %109, %107 ], [ %125, %122 ]
  %128 = phi i32 [ %108, %107 ], [ %123, %122 ]
  %129 = getelementptr inbounds i8, i8* %127, i64 %80
  store i8 57, i8* %129, align 1, !tbaa !15
  br label %130

130:                                              ; preds = %126, %116, %110, %89
  %131 = phi i32 [ %82, %116 ], [ 0, %110 ], [ %82, %89 ], [ %128, %126 ]
  %132 = add nuw nsw i64 %80, 1
  %133 = add nsw i64 %81, -1
  %134 = shl i64 %133, 32
  %135 = ashr exact i64 %134, 32
  %136 = icmp slt i64 %80, %135
  br i1 %136, label %79, label %137, !llvm.loop !19

137:                                              ; preds = %130, %72
  %138 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %139 = bitcast %"class.std::__cxx11::basic_string"* %0 to %union.anon**
  store %union.anon* %138, %union.anon** %139, align 8, !tbaa !5
  %140 = load i8*, i8** %21, align 8, !tbaa !10
  %141 = bitcast %union.anon* %7 to i8*
  %142 = icmp eq i8* %140, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %137
  %144 = bitcast %union.anon* %138 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %144, i8* noundef nonnull align 8 dereferenceable(16) %141, i64 16, i1 false) #7
  br label %150

145:                                              ; preds = %137
  %146 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  store i8* %140, i8** %146, align 8, !tbaa !10
  %147 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 2, i32 0
  %148 = load i64, i64* %147, align 8, !tbaa !15
  %149 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  store i64 %148, i64* %149, align 8, !tbaa !15
  br label %150

150:                                              ; preds = %143, %145
  %151 = load i64, i64* %28, align 8, !tbaa !13
  %152 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  store i64 %151, i64* %152, align 8, !tbaa !13
  store %union.anon* %7, %union.anon** %8, align 8, !tbaa !10
  store i64 0, i64* %28, align 8, !tbaa !13
  store i8 0, i8* %141, align 8, !tbaa !15
  br label %153

153:                                              ; preds = %150, %66
  %154 = load i8*, i8** %21, align 8, !tbaa !10
  %155 = bitcast %union.anon* %7 to i8*
  %156 = icmp eq i8* %154, %155
  br i1 %156, label %158, label %157

157:                                              ; preds = %153
  call void @_ZdlPv(i8* noundef %154) #7
  br label %158

158:                                              ; preds = %153, %157
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #7
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

declare noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64* noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_MAKE_LARGEST_PALINDROME_CHANGING_K_DIGITS_processed.cpp() #3 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #7
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !7, i64 0}
!6 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!11, !7, i64 0}
!11 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !6, i64 0, !12, i64 8, !8, i64 16}
!12 = !{!"long", !8, i64 0}
!13 = !{!11, !12, i64 8}
!14 = !{!12, !12, i64 0}
!15 = !{!8, !8, i64 0}
!16 = distinct !{!16, !17, !18}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = distinct !{!19, !17, !18}
