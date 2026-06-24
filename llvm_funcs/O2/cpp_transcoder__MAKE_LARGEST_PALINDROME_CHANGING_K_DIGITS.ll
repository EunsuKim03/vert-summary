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
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = bitcast %union.anon* %7 to i8*
  br label %22

17:                                               ; preds = %3
  %18 = call noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %5, i64* noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  %19 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 0, i32 0
  store i8* %18, i8** %19, align 8, !tbaa !10
  %20 = load i64, i64* %4, align 8, !tbaa !14
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 2, i32 0
  store i64 %20, i64* %21, align 8, !tbaa !15
  br label %22

22:                                               ; preds = %17, %15
  %23 = phi i8* [ %16, %15 ], [ %18, %17 ]
  switch i64 %12, label %26 [
    i64 1, label %24
    i64 0, label %27
  ]

24:                                               ; preds = %22
  %25 = load i8, i8* %10, align 1, !tbaa !15
  store i8 %25, i8* %23, align 1, !tbaa !15
  br label %27

26:                                               ; preds = %22
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %23, i8* align 1 %10, i64 %12, i1 false) #7
  br label %27

27:                                               ; preds = %22, %24, %26
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 0, i32 0
  %29 = load i64, i64* %4, align 8, !tbaa !14
  %30 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 1
  store i64 %29, i64* %30, align 8, !tbaa !13
  %31 = load i8*, i8** %28, align 8, !tbaa !10
  %32 = getelementptr inbounds i8, i8* %31, i64 %29
  store i8 0, i8* %32, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #7
  %33 = load i64, i64* %11, align 8, !tbaa !13
  %34 = trunc i64 %33 to i32
  %35 = add i32 %34, -1
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %65

37:                                               ; preds = %27
  %38 = zext i32 %35 to i64
  br label %39

39:                                               ; preds = %37, %58
  %40 = phi i64 [ 0, %37 ], [ %60, %58 ]
  %41 = phi i64 [ %38, %37 ], [ %61, %58 ]
  %42 = phi i32 [ %2, %37 ], [ %59, %58 ]
  %43 = load i8*, i8** %9, align 8, !tbaa !10
  %44 = getelementptr inbounds i8, i8* %43, i64 %40
  %45 = load i8, i8* %44, align 1, !tbaa !15
  %46 = getelementptr inbounds i8, i8* %43, i64 %41
  %47 = load i8, i8* %46, align 1, !tbaa !15
  %48 = icmp eq i8 %45, %47
  br i1 %48, label %58, label %49

49:                                               ; preds = %39
  %50 = icmp slt i8 %45, %47
  %51 = select i1 %50, i8* %46, i8* %44
  %52 = load i8, i8* %51, align 1, !tbaa !15
  %53 = load i8*, i8** %28, align 8, !tbaa !10
  %54 = getelementptr inbounds i8, i8* %53, i64 %41
  store i8 %52, i8* %54, align 1, !tbaa !15
  %55 = load i8*, i8** %28, align 8, !tbaa !10
  %56 = getelementptr inbounds i8, i8* %55, i64 %40
  store i8 %52, i8* %56, align 1, !tbaa !15
  %57 = add nsw i32 %42, -1
  br label %58

58:                                               ; preds = %49, %39
  %59 = phi i32 [ %57, %49 ], [ %42, %39 ]
  %60 = add nuw nsw i64 %40, 1
  %61 = add nsw i64 %41, -1
  %62 = shl i64 %61, 32
  %63 = ashr exact i64 %62, 32
  %64 = icmp slt i64 %60, %63
  br i1 %64, label %39, label %65, !llvm.loop !16

65:                                               ; preds = %58, %27
  %66 = phi i32 [ %2, %27 ], [ %59, %58 ]
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %149, label %68

68:                                               ; preds = %65
  %69 = load i64, i64* %11, align 8, !tbaa !13
  %70 = trunc i64 %69 to i32
  %71 = add i32 %70, -1
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %133, label %73

73:                                               ; preds = %68
  %74 = zext i32 %71 to i64
  br label %75

75:                                               ; preds = %73, %126
  %76 = phi i64 [ 0, %73 ], [ %128, %126 ]
  %77 = phi i64 [ %74, %73 ], [ %129, %126 ]
  %78 = phi i32 [ %66, %73 ], [ %127, %126 ]
  %79 = icmp eq i64 %76, %77
  %80 = icmp sgt i32 %78, 0
  %81 = select i1 %79, i1 %80, i1 false
  br i1 %81, label %82, label %85

82:                                               ; preds = %75
  %83 = load i8*, i8** %28, align 8, !tbaa !10
  %84 = getelementptr inbounds i8, i8* %83, i64 %76
  store i8 57, i8* %84, align 1, !tbaa !15
  br label %85

85:                                               ; preds = %82, %75
  %86 = load i8*, i8** %28, align 8, !tbaa !10
  %87 = getelementptr inbounds i8, i8* %86, i64 %76
  %88 = load i8, i8* %87, align 1, !tbaa !15
  %89 = icmp slt i8 %88, 57
  br i1 %89, label %90, label %126

90:                                               ; preds = %85
  %91 = icmp sgt i32 %78, 1
  br i1 %91, label %92, label %106

92:                                               ; preds = %90
  %93 = load i8*, i8** %9, align 8, !tbaa !10
  %94 = getelementptr inbounds i8, i8* %93, i64 %76
  %95 = load i8, i8* %94, align 1, !tbaa !15
  %96 = icmp eq i8 %88, %95
  br i1 %96, label %97, label %106

97:                                               ; preds = %92
  %98 = getelementptr inbounds i8, i8* %86, i64 %77
  %99 = load i8, i8* %98, align 1, !tbaa !15
  %100 = getelementptr inbounds i8, i8* %93, i64 %77
  %101 = load i8, i8* %100, align 1, !tbaa !15
  %102 = icmp eq i8 %99, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %97
  %104 = add nsw i32 %78, -2
  store i8 57, i8* %98, align 1, !tbaa !15
  %105 = load i8*, i8** %28, align 8, !tbaa !10
  br label %122

106:                                              ; preds = %97, %92, %90
  br i1 %80, label %107, label %126

107:                                              ; preds = %106
  %108 = load i8*, i8** %9, align 8, !tbaa !10
  %109 = getelementptr inbounds i8, i8* %108, i64 %76
  %110 = load i8, i8* %109, align 1, !tbaa !15
  %111 = icmp eq i8 %88, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %107
  %113 = getelementptr inbounds i8, i8* %86, i64 %77
  %114 = load i8, i8* %113, align 1, !tbaa !15
  %115 = getelementptr inbounds i8, i8* %108, i64 %77
  %116 = load i8, i8* %115, align 1, !tbaa !15
  %117 = icmp eq i8 %114, %116
  br i1 %117, label %126, label %118

118:                                              ; preds = %112, %107
  %119 = add nsw i32 %78, -1
  %120 = getelementptr inbounds i8, i8* %86, i64 %77
  store i8 57, i8* %120, align 1, !tbaa !15
  %121 = load i8*, i8** %28, align 8, !tbaa !10
  br label %122

122:                                              ; preds = %118, %103
  %123 = phi i8* [ %105, %103 ], [ %121, %118 ]
  %124 = phi i32 [ %104, %103 ], [ %119, %118 ]
  %125 = getelementptr inbounds i8, i8* %123, i64 %76
  store i8 57, i8* %125, align 1, !tbaa !15
  br label %126

126:                                              ; preds = %122, %112, %106, %85
  %127 = phi i32 [ %78, %112 ], [ 0, %106 ], [ %78, %85 ], [ %124, %122 ]
  %128 = add nuw nsw i64 %76, 1
  %129 = add nsw i64 %77, -1
  %130 = shl i64 %129, 32
  %131 = ashr exact i64 %130, 32
  %132 = icmp slt i64 %76, %131
  br i1 %132, label %75, label %133, !llvm.loop !18

133:                                              ; preds = %126, %68
  %134 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %135 = bitcast %"class.std::__cxx11::basic_string"* %0 to %union.anon**
  store %union.anon* %134, %union.anon** %135, align 8, !tbaa !5
  %136 = load i8*, i8** %28, align 8, !tbaa !10
  %137 = bitcast %union.anon* %7 to i8*
  %138 = icmp eq i8* %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %133
  %140 = bitcast %union.anon* %134 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %140, i8* noundef nonnull align 8 dereferenceable(16) %137, i64 16, i1 false) #7
  br label %146

141:                                              ; preds = %133
  %142 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  store i8* %136, i8** %142, align 8, !tbaa !10
  %143 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 2, i32 0
  %144 = load i64, i64* %143, align 8, !tbaa !15
  %145 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  store i64 %144, i64* %145, align 8, !tbaa !15
  br label %146

146:                                              ; preds = %141, %139
  %147 = load i64, i64* %30, align 8, !tbaa !13
  %148 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  store i64 %147, i64* %148, align 8, !tbaa !13
  br label %159

149:                                              ; preds = %65
  %150 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %151 = bitcast %"class.std::__cxx11::basic_string"* %0 to %union.anon**
  store %union.anon* %150, %union.anon** %151, align 8, !tbaa !5
  %152 = bitcast %union.anon* %150 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(12) %152, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 12, i1 false) #7
  %153 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  store i64 12, i64* %153, align 8, !tbaa !13
  %154 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 1, i64 4
  store i8 0, i8* %154, align 4, !tbaa !15
  %155 = load i8*, i8** %28, align 8, !tbaa !10
  %156 = bitcast %union.anon* %7 to i8*
  %157 = icmp eq i8* %155, %156
  br i1 %157, label %159, label %158

158:                                              ; preds = %149
  call void @_ZdlPv(i8* noundef %155) #7
  br label %159

159:                                              ; preds = %146, %149, %158
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
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #7
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
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17}
