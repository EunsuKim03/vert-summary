; ModuleID = 'benchmark/cpp_transcoder/CALCULATE_SUM_OF_ALL_NUMBERS_PRESENT_IN_A_STRING/CALCULATE_SUM_OF_ALL_NUMBERS_PRESENT_IN_A_STRING_processed.cpp'
source_filename = "benchmark/cpp_transcoder/CALCULATE_SUM_OF_ALL_NUMBERS_PRESENT_IN_A_STRING/CALCULATE_SUM_OF_ALL_NUMBERS_PRESENT_IN_A_STRING_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_CALCULATE_SUM_OF_ALL_NUMBERS_PRESENT_IN_A_STRING_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: uwtable
define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* nocapture noundef readonly %0) local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = bitcast %"class.std::__cxx11::basic_string"* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %3) #7
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 2
  %5 = bitcast %"class.std::__cxx11::basic_string"* %2 to %union.anon**
  store %union.anon* %4, %union.anon** %5, align 8, !tbaa !5
  %6 = bitcast %union.anon* %4 to i8*
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 0, i32 0
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 1
  store i64 0, i64* %8, align 8, !tbaa !10
  store i8 0, i8* %6, align 8, !tbaa !13
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8, !tbaa !14
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  %12 = load i64, i64* %11, align 8, !tbaa !10
  %13 = getelementptr inbounds i8, i8* %10, i64 %12
  %14 = icmp eq i64 %12, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 2, i32 0
  br label %29

17:                                               ; preds = %64
  %18 = load i8*, i8** %7, align 8, !tbaa !14
  br label %19

19:                                               ; preds = %17, %1
  %20 = phi i8* [ %6, %1 ], [ %18, %17 ]
  %21 = phi i32 [ 0, %1 ], [ %65, %17 ]
  %22 = call i64 @strtol(i8* nocapture noundef nonnull %20, i8** noundef null, i32 noundef 10) #7
  %23 = load i8*, i8** %7, align 8, !tbaa !14
  %24 = icmp eq i8* %23, %6
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  call void @_ZdlPv(i8* noundef %23) #7
  br label %26

26:                                               ; preds = %19, %25
  %27 = trunc i64 %22 to i32
  %28 = add nsw i32 %21, %27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #7
  ret i32 %28

29:                                               ; preds = %15, %64
  %30 = phi i32 [ 0, %15 ], [ %65, %64 ]
  %31 = phi i8* [ %10, %15 ], [ %66, %64 ]
  %32 = load i8, i8* %31, align 1, !tbaa !13
  %33 = sext i8 %32 to i32
  %34 = add nsw i32 %33, -48
  %35 = icmp ult i32 %34, 10
  br i1 %35, label %36, label %57

36:                                               ; preds = %29
  %37 = load i64, i64* %8, align 8, !tbaa !10
  %38 = add i64 %37, 1
  %39 = load i8*, i8** %7, align 8, !tbaa !14
  %40 = icmp eq i8* %39, %6
  %41 = load i64, i64* %16, align 8
  %42 = select i1 %40, i64 15, i64 %41
  %43 = icmp ugt i64 %38, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %37, i64 noundef 0, i8* noundef null, i64 noundef 1)
          to label %45 unwind label %52

45:                                               ; preds = %44
  %46 = load i8*, i8** %7, align 8, !tbaa !14
  br label %47

47:                                               ; preds = %36, %45
  %48 = phi i8* [ %46, %45 ], [ %39, %36 ]
  %49 = getelementptr inbounds i8, i8* %48, i64 %37
  store i8 %32, i8* %49, align 1, !tbaa !13
  store i64 %38, i64* %8, align 8, !tbaa !10
  %50 = load i8*, i8** %7, align 8, !tbaa !14
  %51 = getelementptr inbounds i8, i8* %50, i64 %38
  store i8 0, i8* %51, align 1, !tbaa !13
  br label %64

52:                                               ; preds = %57, %44
  %53 = landingpad { i8*, i32 }
          cleanup
  %54 = load i8*, i8** %7, align 8, !tbaa !14
  %55 = icmp eq i8* %54, %6
  br i1 %55, label %68, label %56

56:                                               ; preds = %52
  call void @_ZdlPv(i8* noundef %54) #7
  br label %68

57:                                               ; preds = %29
  %58 = load i8*, i8** %7, align 8, !tbaa !14
  %59 = call i64 @strtol(i8* nocapture noundef nonnull %58, i8** noundef null, i32 noundef 10) #7
  %60 = trunc i64 %59 to i32
  %61 = add nsw i32 %30, %60
  %62 = load i64, i64* %8, align 8, !tbaa !10
  %63 = invoke noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %62, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64 noundef 0)
          to label %64 unwind label %52

64:                                               ; preds = %57, %47
  %65 = phi i32 [ %30, %47 ], [ %61, %57 ]
  %66 = getelementptr inbounds i8, i8* %31, i64 1
  %67 = icmp eq i8* %66, %13
  br i1 %67, label %17, label %29

68:                                               ; preds = %56, %52
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #7
  resume { i8*, i32 } %53
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(i8* noundef readonly, i8** nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) local_unnamed_addr #6

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_CALCULATE_SUM_OF_ALL_NUMBERS_PRESENT_IN_A_STRING_processed.cpp() #3 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #7
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!10 = !{!11, !12, i64 8}
!11 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !6, i64 0, !12, i64 8, !8, i64 16}
!12 = !{!"long", !8, i64 0}
!13 = !{!8, !8, i64 0}
!14 = !{!11, !7, i64 0}
