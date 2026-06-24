; ModuleID = 'benchmark/cpp_transcoder/DIVISIBILITY_BY_12_FOR_A_LARGE_NUMBER/DIVISIBILITY_BY_12_FOR_A_LARGE_NUMBER_processed.cpp'
source_filename = "benchmark/cpp_transcoder/DIVISIBILITY_BY_12_FOR_A_LARGE_NUMBER/DIVISIBILITY_BY_12_FOR_A_LARGE_NUMBER_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [5 x i8] c"stoi\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_DIVISIBILITY_BY_12_FOR_A_LARGE_NUMBER_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: uwtable
define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* nocapture noundef readonly %0) local_unnamed_addr #3 personality i32 (...)* @__gxx_personality_v0 {
  %2 = alloca i8*, align 8
  %3 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  %4 = load i64, i64* %3, align 8, !tbaa !5
  %5 = icmp ugt i64 %4, 2
  br i1 %5, label %6, label %104

6:                                                ; preds = %1
  %7 = add i64 %4, -1
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8, !tbaa !12
  %10 = getelementptr inbounds i8, i8* %9, i64 %7
  %11 = load i8, i8* %10, align 1, !tbaa !13
  %12 = zext i8 %11 to i32
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %136

15:                                               ; preds = %6
  %16 = add i64 %4, -2
  %17 = getelementptr inbounds i8, i8* %9, i64 %16
  %18 = load i8, i8* %17, align 1, !tbaa !13
  %19 = zext i8 %18 to i32
  %20 = icmp ult i64 %4, 8
  br i1 %20, label %83, label %21

21:                                               ; preds = %15
  %22 = and i64 %4, -8
  %23 = add i64 %22, -8
  %24 = lshr exact i64 %23, 3
  %25 = add nuw nsw i64 %24, 1
  %26 = and i64 %25, 1
  %27 = icmp eq i64 %23, 0
  br i1 %27, label %59, label %28

28:                                               ; preds = %21
  %29 = and i64 %25, 4611686018427387902
  br label %30

30:                                               ; preds = %30, %28
  %31 = phi i64 [ 0, %28 ], [ %56, %30 ]
  %32 = phi <4 x i32> [ zeroinitializer, %28 ], [ %54, %30 ]
  %33 = phi <4 x i32> [ zeroinitializer, %28 ], [ %55, %30 ]
  %34 = phi i64 [ 0, %28 ], [ %57, %30 ]
  %35 = getelementptr inbounds i8, i8* %9, i64 %31
  %36 = bitcast i8* %35 to <4 x i8>*
  %37 = load <4 x i8>, <4 x i8>* %36, align 1, !tbaa !13
  %38 = getelementptr inbounds i8, i8* %35, i64 4
  %39 = bitcast i8* %38 to <4 x i8>*
  %40 = load <4 x i8>, <4 x i8>* %39, align 1, !tbaa !13
  %41 = sext <4 x i8> %37 to <4 x i32>
  %42 = sext <4 x i8> %40 to <4 x i32>
  %43 = add <4 x i32> %32, %41
  %44 = add <4 x i32> %33, %42
  %45 = or i64 %31, 8
  %46 = getelementptr inbounds i8, i8* %9, i64 %45
  %47 = bitcast i8* %46 to <4 x i8>*
  %48 = load <4 x i8>, <4 x i8>* %47, align 1, !tbaa !13
  %49 = getelementptr inbounds i8, i8* %46, i64 4
  %50 = bitcast i8* %49 to <4 x i8>*
  %51 = load <4 x i8>, <4 x i8>* %50, align 1, !tbaa !13
  %52 = sext <4 x i8> %48 to <4 x i32>
  %53 = sext <4 x i8> %51 to <4 x i32>
  %54 = add <4 x i32> %43, %52
  %55 = add <4 x i32> %44, %53
  %56 = add nuw i64 %31, 16
  %57 = add i64 %34, 2
  %58 = icmp eq i64 %57, %29
  br i1 %58, label %59, label %30, !llvm.loop !14

59:                                               ; preds = %30, %21
  %60 = phi <4 x i32> [ undef, %21 ], [ %54, %30 ]
  %61 = phi <4 x i32> [ undef, %21 ], [ %55, %30 ]
  %62 = phi i64 [ 0, %21 ], [ %56, %30 ]
  %63 = phi <4 x i32> [ zeroinitializer, %21 ], [ %54, %30 ]
  %64 = phi <4 x i32> [ zeroinitializer, %21 ], [ %55, %30 ]
  %65 = icmp eq i64 %26, 0
  br i1 %65, label %77, label %66

66:                                               ; preds = %59
  %67 = getelementptr inbounds i8, i8* %9, i64 %62
  %68 = bitcast i8* %67 to <4 x i8>*
  %69 = load <4 x i8>, <4 x i8>* %68, align 1, !tbaa !13
  %70 = getelementptr inbounds i8, i8* %67, i64 4
  %71 = bitcast i8* %70 to <4 x i8>*
  %72 = load <4 x i8>, <4 x i8>* %71, align 1, !tbaa !13
  %73 = sext <4 x i8> %69 to <4 x i32>
  %74 = sext <4 x i8> %72 to <4 x i32>
  %75 = add <4 x i32> %63, %73
  %76 = add <4 x i32> %64, %74
  br label %77

77:                                               ; preds = %59, %66
  %78 = phi <4 x i32> [ %60, %59 ], [ %75, %66 ]
  %79 = phi <4 x i32> [ %61, %59 ], [ %76, %66 ]
  %80 = add <4 x i32> %79, %78
  %81 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %80)
  %82 = icmp eq i64 %4, %22
  br i1 %82, label %86, label %83

83:                                               ; preds = %15, %77
  %84 = phi i64 [ 0, %15 ], [ %22, %77 ]
  %85 = phi i32 [ 0, %15 ], [ %81, %77 ]
  br label %90

86:                                               ; preds = %90, %77
  %87 = phi i32 [ %81, %77 ], [ %96, %90 ]
  %88 = srem i32 %87, 3
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %99, label %136

90:                                               ; preds = %83, %90
  %91 = phi i64 [ %97, %90 ], [ %84, %83 ]
  %92 = phi i32 [ %96, %90 ], [ %85, %83 ]
  %93 = getelementptr inbounds i8, i8* %9, i64 %91
  %94 = load i8, i8* %93, align 1, !tbaa !13
  %95 = sext i8 %94 to i32
  %96 = add nsw i32 %92, %95
  %97 = add nuw nsw i64 %91, 1
  %98 = icmp eq i64 %97, %4
  br i1 %98, label %86, label %90, !llvm.loop !17

99:                                               ; preds = %86
  %100 = mul nuw nsw i32 %19, 10
  %101 = add nuw nsw i32 %100, %12
  %102 = and i32 %101, 3
  %103 = icmp eq i32 %102, 0
  br label %136

104:                                              ; preds = %1
  %105 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8, !tbaa !12
  %107 = bitcast i8** %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %107) #9
  %108 = tail call i32* @__errno_location() #10
  %109 = load i32, i32* %108, align 4, !tbaa !19
  store i32 0, i32* %108, align 4, !tbaa !19
  %110 = call noundef i64 @strtol(i8* noundef %106, i8** noundef nonnull %2, i32 noundef 10)
  %111 = load i8*, i8** %2, align 8, !tbaa !21
  %112 = icmp eq i8* %111, %106
  br i1 %112, label %113, label %121

113:                                              ; preds = %104
  invoke void @_ZSt24__throw_invalid_argumentPKc(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #11
          to label %114 unwind label %115

114:                                              ; preds = %113
  unreachable

115:                                              ; preds = %127, %113
  %116 = landingpad { i8*, i32 }
          cleanup
  %117 = load i32, i32* %108, align 4, !tbaa !19
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %115
  store i32 %109, i32* %108, align 4, !tbaa !19
  br label %120

120:                                              ; preds = %119, %115
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %107) #9
  resume { i8*, i32 } %116

121:                                              ; preds = %104
  %122 = load i32, i32* %108, align 4, !tbaa !19
  %123 = icmp eq i32 %122, 34
  %124 = add i64 %110, -2147483648
  %125 = icmp ult i64 %124, -4294967296
  %126 = or i1 %125, %123
  br i1 %126, label %127, label %129

127:                                              ; preds = %121
  invoke void @_ZSt20__throw_out_of_rangePKc(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #11
          to label %128 unwind label %115

128:                                              ; preds = %127
  unreachable

129:                                              ; preds = %121
  %130 = icmp eq i32 %122, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %129
  store i32 %109, i32* %108, align 4, !tbaa !19
  br label %132

132:                                              ; preds = %129, %131
  %133 = trunc i64 %110 to i32
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %107) #9
  %134 = srem i32 %133, 12
  %135 = icmp eq i32 %134, 0
  br label %136

136:                                              ; preds = %6, %99, %86, %132
  %137 = phi i1 [ %135, %132 ], [ false, %6 ], [ false, %86 ], [ %103, %99 ]
  %138 = zext i1 %137 to i32
  ret i32 %138
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(i8* noundef readonly, i8** nocapture noundef, i32 noundef) local_unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noreturn
declare void @_ZSt24__throw_invalid_argumentPKc(i8* noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt20__throw_out_of_rangePKc(i8* noundef) local_unnamed_addr #6

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_DIVISIBILITY_BY_12_FOR_A_LARGE_NUMBER_processed.cpp() #3 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #9
  ret void
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #8

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nosync nounwind readnone willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind readnone willreturn }
attributes #11 = { noreturn }

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
!17 = distinct !{!17, !15, !18, !16}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = !{!20, !20, i64 0}
!20 = !{!"int", !9, i64 0}
!21 = !{!8, !8, i64 0}
