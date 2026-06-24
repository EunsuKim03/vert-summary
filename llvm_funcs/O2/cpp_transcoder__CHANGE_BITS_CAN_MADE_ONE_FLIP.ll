; ModuleID = 'benchmark/cpp_transcoder/CHANGE_BITS_CAN_MADE_ONE_FLIP/CHANGE_BITS_CAN_MADE_ONE_FLIP_processed.cpp'
source_filename = "benchmark/cpp_transcoder/CHANGE_BITS_CAN_MADE_ONE_FLIP/CHANGE_BITS_CAN_MADE_ONE_FLIP_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_CHANGE_BITS_CAN_MADE_ONE_FLIP_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readonly uwtable
define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* nocapture noundef readonly %0) local_unnamed_addr #3 personality i32 (...)* @__gxx_personality_v0 {
  %2 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %3 = load i8*, i8** %2, align 8, !tbaa !5
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  %5 = load i64, i64* %4, align 8, !tbaa !12
  %6 = getelementptr inbounds i8, i8* %3, i64 %5
  %7 = icmp eq i64 %5, 0
  br i1 %7, label %56, label %8

8:                                                ; preds = %1
  %9 = icmp ult i64 %5, 8
  br i1 %9, label %45, label %10

10:                                               ; preds = %8
  %11 = and i64 %5, -8
  %12 = getelementptr i8, i8* %3, i64 %11
  br label %13

13:                                               ; preds = %13, %10
  %14 = phi i64 [ 0, %10 ], [ %37, %13 ]
  %15 = phi <4 x i32> [ zeroinitializer, %10 ], [ %35, %13 ]
  %16 = phi <4 x i32> [ zeroinitializer, %10 ], [ %36, %13 ]
  %17 = phi <4 x i32> [ zeroinitializer, %10 ], [ %31, %13 ]
  %18 = phi <4 x i32> [ zeroinitializer, %10 ], [ %32, %13 ]
  %19 = getelementptr i8, i8* %3, i64 %14
  %20 = bitcast i8* %19 to <4 x i8>*
  %21 = load <4 x i8>, <4 x i8>* %20, align 1, !tbaa !13
  %22 = getelementptr i8, i8* %19, i64 4
  %23 = bitcast i8* %22 to <4 x i8>*
  %24 = load <4 x i8>, <4 x i8>* %23, align 1, !tbaa !13
  %25 = icmp eq <4 x i8> %21, <i8 48, i8 48, i8 48, i8 48>
  %26 = icmp eq <4 x i8> %24, <i8 48, i8 48, i8 48, i8 48>
  %27 = xor <4 x i1> %25, <i1 true, i1 true, i1 true, i1 true>
  %28 = xor <4 x i1> %26, <i1 true, i1 true, i1 true, i1 true>
  %29 = zext <4 x i1> %27 to <4 x i32>
  %30 = zext <4 x i1> %28 to <4 x i32>
  %31 = add <4 x i32> %17, %29
  %32 = add <4 x i32> %18, %30
  %33 = zext <4 x i1> %25 to <4 x i32>
  %34 = zext <4 x i1> %26 to <4 x i32>
  %35 = add <4 x i32> %15, %33
  %36 = add <4 x i32> %16, %34
  %37 = add nuw i64 %14, 8
  %38 = icmp eq i64 %37, %11
  br i1 %38, label %39, label %13, !llvm.loop !14

39:                                               ; preds = %13
  %40 = add <4 x i32> %32, %31
  %41 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %40)
  %42 = add <4 x i32> %36, %35
  %43 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %42)
  %44 = icmp eq i64 %5, %11
  br i1 %44, label %49, label %45

45:                                               ; preds = %8, %39
  %46 = phi i32 [ 0, %8 ], [ %43, %39 ]
  %47 = phi i32 [ 0, %8 ], [ %41, %39 ]
  %48 = phi i8* [ %3, %8 ], [ %12, %39 ]
  br label %58

49:                                               ; preds = %58, %39
  %50 = phi i32 [ %41, %39 ], [ %66, %58 ]
  %51 = phi i32 [ %43, %39 ], [ %68, %58 ]
  %52 = icmp eq i32 %51, 1
  %53 = icmp eq i32 %50, 1
  %54 = select i1 %52, i1 true, i1 %53
  %55 = zext i1 %54 to i32
  br label %56

56:                                               ; preds = %49, %1
  %57 = phi i32 [ 0, %1 ], [ %55, %49 ]
  ret i32 %57

58:                                               ; preds = %45, %58
  %59 = phi i32 [ %68, %58 ], [ %46, %45 ]
  %60 = phi i32 [ %66, %58 ], [ %47, %45 ]
  %61 = phi i8* [ %69, %58 ], [ %48, %45 ]
  %62 = load i8, i8* %61, align 1, !tbaa !13
  %63 = icmp eq i8 %62, 48
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = add nuw nsw i32 %60, %65
  %67 = zext i1 %63 to i32
  %68 = add nuw nsw i32 %59, %67
  %69 = getelementptr inbounds i8, i8* %61, i64 1
  %70 = icmp eq i8* %69, %6
  br i1 %70, label %49, label %58, !llvm.loop !16
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_CHANGE_BITS_CAN_MADE_ONE_FLIP_processed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nofree nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!5 = !{!6, !8, i64 0}
!6 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !7, i64 0, !11, i64 8, !9, i64 16}
!7 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !8, i64 0}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"long", !9, i64 0}
!12 = !{!6, !11, i64 8}
!13 = !{!9, !9, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = distinct !{!16, !17, !15}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
