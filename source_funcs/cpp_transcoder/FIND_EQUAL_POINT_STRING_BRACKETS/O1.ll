; ModuleID = 'llvm/cpp_transcoder/FIND_EQUAL_POINT_STRING_BRACKETS/FIND_EQUAL_POINT_STRING_BRACKETS_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/FIND_EQUAL_POINT_STRING_BRACKETS/FIND_EQUAL_POINT_STRING_BRACKETS_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_FIND_EQUAL_POINT_STRING_BRACKETS_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  %3 = load i64, i64* %2, align 8, !tbaa !5
  %4 = trunc i64 %3 to i32
  %5 = add i64 %3, 1
  %6 = and i64 %5, 4294967295
  %7 = alloca i32, i64 %6, align 16
  %8 = alloca i32, i64 %6, align 16
  %9 = bitcast i32* %7 to i8*
  %10 = shl nuw nsw i64 %6, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %9, i8 0, i64 %10, i1 false)
  %11 = bitcast i32* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %11, i8 0, i64 %10, i1 false)
  store i32 0, i32* %7, align 16, !tbaa !12
  %12 = shl i64 %3, 32
  %13 = ashr exact i64 %12, 32
  %14 = getelementptr inbounds i32, i32* %8, i64 %13
  store i32 0, i32* %14, align 4, !tbaa !12
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8, !tbaa !14
  %17 = load i8, i8* %16, align 1, !tbaa !15
  %18 = icmp eq i8 %17, 40
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = getelementptr inbounds i32, i32* %7, i64 1
  store i32 1, i32* %20, align 4, !tbaa !12
  br label %21

21:                                               ; preds = %19, %1
  %22 = add i64 %12, -4294967296
  %23 = ashr exact i64 %22, 32
  %24 = getelementptr inbounds i8, i8* %16, i64 %23
  %25 = load i8, i8* %24, align 1, !tbaa !15
  %26 = icmp eq i8 %25, 41
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = getelementptr inbounds i32, i32* %8, i64 %23
  store i32 1, i32* %28, align 4, !tbaa !12
  br label %29

29:                                               ; preds = %27, %21
  %30 = icmp sgt i32 %4, 1
  br i1 %30, label %31, label %33

31:                                               ; preds = %29
  %32 = and i64 %3, 4294967295
  br label %39

33:                                               ; preds = %39, %29
  %34 = icmp sgt i32 %4, 1
  br i1 %34, label %35, label %52

35:                                               ; preds = %33
  %36 = shl i64 %3, 32
  %37 = add i64 %36, -8589934592
  %38 = ashr exact i64 %37, 32
  br label %56

39:                                               ; preds = %31, %39
  %40 = phi i64 [ 1, %31 ], [ %50, %39 ]
  %41 = getelementptr inbounds i8, i8* %16, i64 %40
  %42 = load i8, i8* %41, align 1, !tbaa !15
  %43 = icmp eq i8 %42, 40
  %44 = getelementptr inbounds i32, i32* %7, i64 %40
  %45 = load i32, i32* %44, align 4, !tbaa !12
  %46 = zext i1 %43 to i32
  %47 = add nsw i32 %45, %46
  %48 = add nuw nsw i64 %40, 1
  %49 = getelementptr inbounds i32, i32* %7, i64 %48
  store i32 %47, i32* %49, align 4, !tbaa !12
  %50 = add nuw nsw i64 %40, 1
  %51 = icmp eq i64 %50, %32
  br i1 %51, label %33, label %39, !llvm.loop !16

52:                                               ; preds = %56, %33
  %53 = getelementptr inbounds i32, i32* %7, i64 %13
  %54 = load i32, i32* %53, align 4, !tbaa !12
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %89, label %69

56:                                               ; preds = %35, %56
  %57 = phi i64 [ %38, %35 ], [ %67, %56 ]
  %58 = getelementptr inbounds i8, i8* %16, i64 %57
  %59 = load i8, i8* %58, align 1, !tbaa !15
  %60 = icmp eq i8 %59, 41
  %61 = add nsw i64 %57, 1
  %62 = getelementptr inbounds i32, i32* %8, i64 %61
  %63 = load i32, i32* %62, align 4, !tbaa !12
  %64 = zext i1 %60 to i32
  %65 = add nsw i32 %63, %64
  %66 = getelementptr inbounds i32, i32* %8, i64 %57
  store i32 %65, i32* %66, align 4, !tbaa !12
  %67 = add nsw i64 %57, -1
  %68 = icmp sgt i64 %57, 0
  br i1 %68, label %56, label %52, !llvm.loop !19

69:                                               ; preds = %52
  %70 = load i32, i32* %8, align 16, !tbaa !12
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %89, label %72

72:                                               ; preds = %69
  %73 = icmp slt i32 %4, 0
  br i1 %73, label %89, label %74

74:                                               ; preds = %72
  %75 = add i64 %3, 1
  %76 = and i64 %75, 4294967295
  br label %77

77:                                               ; preds = %74, %77
  %78 = phi i64 [ 0, %74 ], [ %87, %77 ]
  %79 = phi i32 [ -1, %74 ], [ %86, %77 ]
  %80 = getelementptr inbounds i32, i32* %7, i64 %78
  %81 = load i32, i32* %80, align 4, !tbaa !12
  %82 = getelementptr inbounds i32, i32* %8, i64 %78
  %83 = load i32, i32* %82, align 4, !tbaa !12
  %84 = icmp eq i32 %81, %83
  %85 = trunc i64 %78 to i32
  %86 = select i1 %84, i32 %85, i32 %79
  %87 = add nuw nsw i64 %78, 1
  %88 = icmp eq i64 %87, %76
  br i1 %88, label %89, label %77, !llvm.loop !20

89:                                               ; preds = %77, %72, %69, %52
  %90 = phi i32 [ %4, %52 ], [ 0, %69 ], [ -1, %72 ], [ %86, %77 ]
  ret i32 %90
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_FIND_EQUAL_POINT_STRING_BRACKETS_reprocessed.cpp() #5 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
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
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !9, i64 0}
!14 = !{!6, !8, i64 0}
!15 = !{!9, !9, i64 0}
!16 = distinct !{!16, !17, !18}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = distinct !{!19, !17, !18}
!20 = distinct !{!20, !17, !18}
