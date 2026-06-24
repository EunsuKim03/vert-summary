; ModuleID = 'benchmark/cpp_transcoder/MINIMUM_INSERTIONS_TO_FORM_A_PALINDROME_WITH_PERMUTATIONS_ALLOWED/MINIMUM_INSERTIONS_TO_FORM_A_PALINDROME_WITH_PERMUTATIONS_ALLOWED_processed.cpp'
source_filename = "benchmark/cpp_transcoder/MINIMUM_INSERTIONS_TO_FORM_A_PALINDROME_WITH_PERMUTATIONS_ALLOWED/MINIMUM_INSERTIONS_TO_FORM_A_PALINDROME_WITH_PERMUTATIONS_ALLOWED_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_MINIMUM_INSERTIONS_TO_FORM_A_PALINDROME_WITH_PERMUTATIONS_ALLOWED_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = alloca [26 x i32], align 16
  %3 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  %4 = load i64, i64* %3, align 8, !tbaa !5
  %5 = trunc i64 %4 to i32
  %6 = bitcast [26 x i32]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 104, i8* nonnull %6) #8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(104) %6, i8 0, i64 104, i1 false)
  %7 = icmp sgt i32 %5, 0
  br i1 %7, label %8, label %48

8:                                                ; preds = %1
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8, !tbaa !12
  %11 = and i64 %4, 4294967295
  %12 = and i64 %4, 1
  %13 = icmp eq i64 %11, 1
  br i1 %13, label %37, label %14

14:                                               ; preds = %8
  %15 = sub nsw i64 %11, %12
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi i64 [ 0, %14 ], [ %34, %16 ]
  %18 = phi i64 [ 0, %14 ], [ %35, %16 ]
  %19 = getelementptr inbounds i8, i8* %10, i64 %17
  %20 = load i8, i8* %19, align 1, !tbaa !13
  %21 = sext i8 %20 to i64
  %22 = add nsw i64 %21, -97
  %23 = getelementptr inbounds [26 x i32], [26 x i32]* %2, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4, !tbaa !14
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4, !tbaa !14
  %26 = or i64 %17, 1
  %27 = getelementptr inbounds i8, i8* %10, i64 %26
  %28 = load i8, i8* %27, align 1, !tbaa !13
  %29 = sext i8 %28 to i64
  %30 = add nsw i64 %29, -97
  %31 = getelementptr inbounds [26 x i32], [26 x i32]* %2, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4, !tbaa !14
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4, !tbaa !14
  %34 = add nuw nsw i64 %17, 2
  %35 = add i64 %18, 2
  %36 = icmp eq i64 %35, %15
  br i1 %36, label %37, label %16, !llvm.loop !16

37:                                               ; preds = %16, %8
  %38 = phi i64 [ 0, %8 ], [ %34, %16 ]
  %39 = icmp eq i64 %12, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds i8, i8* %10, i64 %38
  %42 = load i8, i8* %41, align 1, !tbaa !13
  %43 = sext i8 %42 to i64
  %44 = add nsw i64 %43, -97
  %45 = getelementptr inbounds [26 x i32], [26 x i32]* %2, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4, !tbaa !14
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4, !tbaa !14
  br label %48

48:                                               ; preds = %1, %37, %40
  %49 = bitcast [26 x i32]* %2 to <4 x i32>*
  %50 = load <4 x i32>, <4 x i32>* %49, align 16, !tbaa !14
  %51 = srem <4 x i32> %50, <i32 2, i32 2, i32 2, i32 2>
  %52 = icmp eq <4 x i32> %51, <i32 1, i32 1, i32 1, i32 1>
  %53 = zext <4 x i1> %52 to <4 x i32>
  %54 = getelementptr inbounds [26 x i32], [26 x i32]* %2, i64 0, i64 4
  %55 = bitcast i32* %54 to <4 x i32>*
  %56 = load <4 x i32>, <4 x i32>* %55, align 16, !tbaa !14
  %57 = srem <4 x i32> %56, <i32 2, i32 2, i32 2, i32 2>
  %58 = icmp eq <4 x i32> %57, <i32 1, i32 1, i32 1, i32 1>
  %59 = zext <4 x i1> %58 to <4 x i32>
  %60 = add nuw nsw <4 x i32> %53, %59
  %61 = getelementptr inbounds [26 x i32], [26 x i32]* %2, i64 0, i64 8
  %62 = bitcast i32* %61 to <4 x i32>*
  %63 = load <4 x i32>, <4 x i32>* %62, align 16, !tbaa !14
  %64 = srem <4 x i32> %63, <i32 2, i32 2, i32 2, i32 2>
  %65 = icmp eq <4 x i32> %64, <i32 1, i32 1, i32 1, i32 1>
  %66 = zext <4 x i1> %65 to <4 x i32>
  %67 = add nuw nsw <4 x i32> %60, %66
  %68 = getelementptr inbounds [26 x i32], [26 x i32]* %2, i64 0, i64 12
  %69 = bitcast i32* %68 to <4 x i32>*
  %70 = load <4 x i32>, <4 x i32>* %69, align 16, !tbaa !14
  %71 = srem <4 x i32> %70, <i32 2, i32 2, i32 2, i32 2>
  %72 = icmp eq <4 x i32> %71, <i32 1, i32 1, i32 1, i32 1>
  %73 = zext <4 x i1> %72 to <4 x i32>
  %74 = add nuw nsw <4 x i32> %67, %73
  %75 = getelementptr inbounds [26 x i32], [26 x i32]* %2, i64 0, i64 16
  %76 = bitcast i32* %75 to <4 x i32>*
  %77 = load <4 x i32>, <4 x i32>* %76, align 16, !tbaa !14
  %78 = srem <4 x i32> %77, <i32 2, i32 2, i32 2, i32 2>
  %79 = icmp eq <4 x i32> %78, <i32 1, i32 1, i32 1, i32 1>
  %80 = zext <4 x i1> %79 to <4 x i32>
  %81 = add nuw nsw <4 x i32> %74, %80
  %82 = getelementptr inbounds [26 x i32], [26 x i32]* %2, i64 0, i64 20
  %83 = bitcast i32* %82 to <4 x i32>*
  %84 = load <4 x i32>, <4 x i32>* %83, align 16, !tbaa !14
  %85 = srem <4 x i32> %84, <i32 2, i32 2, i32 2, i32 2>
  %86 = icmp eq <4 x i32> %85, <i32 1, i32 1, i32 1, i32 1>
  %87 = zext <4 x i1> %86 to <4 x i32>
  %88 = add nuw nsw <4 x i32> %81, %87
  %89 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %88)
  %90 = getelementptr inbounds [26 x i32], [26 x i32]* %2, i64 0, i64 24
  %91 = load i32, i32* %90, align 16, !tbaa !14
  %92 = srem i32 %91, 2
  %93 = icmp eq i32 %92, 1
  %94 = zext i1 %93 to i32
  %95 = add nuw nsw i32 %89, %94
  %96 = getelementptr inbounds [26 x i32], [26 x i32]* %2, i64 0, i64 25
  %97 = load i32, i32* %96, align 4, !tbaa !14
  %98 = srem i32 %97, 2
  %99 = icmp eq i32 %98, 1
  %100 = zext i1 %99 to i32
  %101 = add nuw nsw i32 %95, %100
  %102 = icmp eq i32 %101, 0
  %103 = add nsw i32 %101, -1
  %104 = select i1 %102, i32 0, i32 %103
  call void @llvm.lifetime.end.p0i8(i64 104, i8* nonnull %6) #8
  ret i32 %104
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_MINIMUM_INSERTIONS_TO_FORM_A_PALINDROME_WITH_PERMUTATIONS_ALLOWED_processed.cpp() #6 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #8
  ret void
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #7

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind }

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
