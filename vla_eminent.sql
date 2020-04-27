--
-- PostgreSQL database dump
--

-- Dumped from database version 11.7 (Ubuntu 11.7-2.pgdg18.04+1)
-- Dumped by pg_dump version 11.7 (Ubuntu 11.7-2.pgdg18.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: actstream_action; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.actstream_action (
    id integer NOT NULL,
    actor_object_id character varying(255) NOT NULL,
    verb character varying(255) NOT NULL,
    description text,
    target_object_id character varying(255),
    action_object_object_id character varying(255),
    "timestamp" timestamp with time zone NOT NULL,
    public boolean NOT NULL,
    action_object_content_type_id integer,
    actor_content_type_id integer NOT NULL,
    target_content_type_id integer
);


ALTER TABLE public.actstream_action OWNER TO venture;

--
-- Name: actstream_action_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.actstream_action_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.actstream_action_id_seq OWNER TO venture;

--
-- Name: actstream_action_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.actstream_action_id_seq OWNED BY public.actstream_action.id;


--
-- Name: actstream_follow; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.actstream_follow (
    id integer NOT NULL,
    object_id character varying(255) NOT NULL,
    actor_only boolean NOT NULL,
    started timestamp with time zone NOT NULL,
    content_type_id integer NOT NULL,
    user_id integer NOT NULL,
    flag character varying(255) NOT NULL
);


ALTER TABLE public.actstream_follow OWNER TO venture;

--
-- Name: actstream_follow_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.actstream_follow_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.actstream_follow_id_seq OWNER TO venture;

--
-- Name: actstream_follow_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.actstream_follow_id_seq OWNED BY public.actstream_follow.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO venture;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO venture;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO venture;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO venture;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO venture;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO venture;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO venture;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO venture;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO venture;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO venture;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO venture;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO venture;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: cms_aliaspluginmodel; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.cms_aliaspluginmodel (
    cmsplugin_ptr_id integer NOT NULL,
    plugin_id integer,
    alias_placeholder_id integer
);


ALTER TABLE public.cms_aliaspluginmodel OWNER TO venture;

--
-- Name: cms_cmsplugin; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.cms_cmsplugin (
    id integer NOT NULL,
    "position" smallint NOT NULL,
    language character varying(15) NOT NULL,
    plugin_type character varying(50) NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    changed_date timestamp with time zone NOT NULL,
    parent_id integer,
    placeholder_id integer,
    depth integer NOT NULL,
    numchild integer NOT NULL,
    path character varying(255) NOT NULL,
    CONSTRAINT cms_cmsplugin_depth_check CHECK ((depth >= 0)),
    CONSTRAINT cms_cmsplugin_numchild_check CHECK ((numchild >= 0)),
    CONSTRAINT cms_cmsplugin_position_check CHECK (("position" >= 0))
);


ALTER TABLE public.cms_cmsplugin OWNER TO venture;

--
-- Name: cms_cmsplugin_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.cms_cmsplugin_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cms_cmsplugin_id_seq OWNER TO venture;

--
-- Name: cms_cmsplugin_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.cms_cmsplugin_id_seq OWNED BY public.cms_cmsplugin.id;


--
-- Name: cms_globalpagepermission; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.cms_globalpagepermission (
    id integer NOT NULL,
    can_change boolean NOT NULL,
    can_add boolean NOT NULL,
    can_delete boolean NOT NULL,
    can_change_advanced_settings boolean NOT NULL,
    can_publish boolean NOT NULL,
    can_change_permissions boolean NOT NULL,
    can_move_page boolean NOT NULL,
    can_view boolean NOT NULL,
    can_recover_page boolean NOT NULL,
    group_id integer,
    user_id integer
);


ALTER TABLE public.cms_globalpagepermission OWNER TO venture;

--
-- Name: cms_globalpagepermission_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.cms_globalpagepermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cms_globalpagepermission_id_seq OWNER TO venture;

--
-- Name: cms_globalpagepermission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.cms_globalpagepermission_id_seq OWNED BY public.cms_globalpagepermission.id;


--
-- Name: cms_globalpagepermission_sites; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.cms_globalpagepermission_sites (
    id integer NOT NULL,
    globalpagepermission_id integer NOT NULL,
    site_id integer NOT NULL
);


ALTER TABLE public.cms_globalpagepermission_sites OWNER TO venture;

--
-- Name: cms_globalpagepermission_sites_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.cms_globalpagepermission_sites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cms_globalpagepermission_sites_id_seq OWNER TO venture;

--
-- Name: cms_globalpagepermission_sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.cms_globalpagepermission_sites_id_seq OWNED BY public.cms_globalpagepermission_sites.id;


--
-- Name: cms_page; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.cms_page (
    id integer NOT NULL,
    created_by character varying(255) NOT NULL,
    changed_by character varying(255) NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    changed_date timestamp with time zone NOT NULL,
    publication_date timestamp with time zone,
    publication_end_date timestamp with time zone,
    in_navigation boolean NOT NULL,
    soft_root boolean NOT NULL,
    reverse_id character varying(40),
    navigation_extenders character varying(80),
    template character varying(100) NOT NULL,
    login_required boolean NOT NULL,
    limit_visibility_in_menu smallint,
    is_home boolean NOT NULL,
    application_urls character varying(200),
    application_namespace character varying(200),
    publisher_is_draft boolean NOT NULL,
    languages character varying(255),
    xframe_options integer NOT NULL,
    publisher_public_id integer,
    is_page_type boolean NOT NULL,
    node_id integer NOT NULL
);


ALTER TABLE public.cms_page OWNER TO venture;

--
-- Name: cms_page_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.cms_page_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cms_page_id_seq OWNER TO venture;

--
-- Name: cms_page_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.cms_page_id_seq OWNED BY public.cms_page.id;


--
-- Name: cms_page_placeholders; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.cms_page_placeholders (
    id integer NOT NULL,
    page_id integer NOT NULL,
    placeholder_id integer NOT NULL
);


ALTER TABLE public.cms_page_placeholders OWNER TO venture;

--
-- Name: cms_page_placeholders_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.cms_page_placeholders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cms_page_placeholders_id_seq OWNER TO venture;

--
-- Name: cms_page_placeholders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.cms_page_placeholders_id_seq OWNED BY public.cms_page_placeholders.id;


--
-- Name: cms_pagepermission; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.cms_pagepermission (
    id integer NOT NULL,
    can_change boolean NOT NULL,
    can_add boolean NOT NULL,
    can_delete boolean NOT NULL,
    can_change_advanced_settings boolean NOT NULL,
    can_publish boolean NOT NULL,
    can_change_permissions boolean NOT NULL,
    can_move_page boolean NOT NULL,
    can_view boolean NOT NULL,
    grant_on integer NOT NULL,
    group_id integer,
    page_id integer,
    user_id integer
);


ALTER TABLE public.cms_pagepermission OWNER TO venture;

--
-- Name: cms_pagepermission_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.cms_pagepermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cms_pagepermission_id_seq OWNER TO venture;

--
-- Name: cms_pagepermission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.cms_pagepermission_id_seq OWNED BY public.cms_pagepermission.id;


--
-- Name: cms_pageuser; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.cms_pageuser (
    user_ptr_id integer NOT NULL,
    created_by_id integer NOT NULL
);


ALTER TABLE public.cms_pageuser OWNER TO venture;

--
-- Name: cms_pageusergroup; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.cms_pageusergroup (
    group_ptr_id integer NOT NULL,
    created_by_id integer NOT NULL
);


ALTER TABLE public.cms_pageusergroup OWNER TO venture;

--
-- Name: cms_placeholder; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.cms_placeholder (
    id integer NOT NULL,
    slot character varying(255) NOT NULL,
    default_width smallint,
    CONSTRAINT cms_placeholder_default_width_check CHECK ((default_width >= 0))
);


ALTER TABLE public.cms_placeholder OWNER TO venture;

--
-- Name: cms_placeholder_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.cms_placeholder_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cms_placeholder_id_seq OWNER TO venture;

--
-- Name: cms_placeholder_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.cms_placeholder_id_seq OWNED BY public.cms_placeholder.id;


--
-- Name: cms_placeholderreference; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.cms_placeholderreference (
    cmsplugin_ptr_id integer NOT NULL,
    name character varying(255) NOT NULL,
    placeholder_ref_id integer
);


ALTER TABLE public.cms_placeholderreference OWNER TO venture;

--
-- Name: cms_staticplaceholder; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.cms_staticplaceholder (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    code character varying(255) NOT NULL,
    dirty boolean NOT NULL,
    creation_method character varying(20) NOT NULL,
    draft_id integer,
    public_id integer,
    site_id integer
);


ALTER TABLE public.cms_staticplaceholder OWNER TO venture;

--
-- Name: cms_staticplaceholder_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.cms_staticplaceholder_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cms_staticplaceholder_id_seq OWNER TO venture;

--
-- Name: cms_staticplaceholder_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.cms_staticplaceholder_id_seq OWNED BY public.cms_staticplaceholder.id;


--
-- Name: cms_title; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.cms_title (
    id integer NOT NULL,
    language character varying(15) NOT NULL,
    title character varying(255) NOT NULL,
    page_title character varying(255),
    menu_title character varying(255),
    meta_description text,
    slug character varying(255) NOT NULL,
    path character varying(255) NOT NULL,
    has_url_overwrite boolean NOT NULL,
    redirect character varying(2048),
    creation_date timestamp with time zone NOT NULL,
    published boolean NOT NULL,
    publisher_is_draft boolean NOT NULL,
    publisher_state smallint NOT NULL,
    page_id integer NOT NULL,
    publisher_public_id integer
);


ALTER TABLE public.cms_title OWNER TO venture;

--
-- Name: cms_title_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.cms_title_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cms_title_id_seq OWNER TO venture;

--
-- Name: cms_title_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.cms_title_id_seq OWNED BY public.cms_title.id;


--
-- Name: cms_treenode; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.cms_treenode (
    id integer NOT NULL,
    path character varying(255) NOT NULL,
    depth integer NOT NULL,
    numchild integer NOT NULL,
    parent_id integer,
    site_id integer NOT NULL,
    CONSTRAINT cms_treenode_depth_check CHECK ((depth >= 0)),
    CONSTRAINT cms_treenode_numchild_check CHECK ((numchild >= 0))
);


ALTER TABLE public.cms_treenode OWNER TO venture;

--
-- Name: cms_treenode_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.cms_treenode_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cms_treenode_id_seq OWNER TO venture;

--
-- Name: cms_treenode_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.cms_treenode_id_seq OWNED BY public.cms_treenode.id;


--
-- Name: cms_urlconfrevision; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.cms_urlconfrevision (
    id integer NOT NULL,
    revision character varying(255) NOT NULL
);


ALTER TABLE public.cms_urlconfrevision OWNER TO venture;

--
-- Name: cms_urlconfrevision_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.cms_urlconfrevision_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cms_urlconfrevision_id_seq OWNER TO venture;

--
-- Name: cms_urlconfrevision_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.cms_urlconfrevision_id_seq OWNED BY public.cms_urlconfrevision.id;


--
-- Name: cms_usersettings; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.cms_usersettings (
    id integer NOT NULL,
    language character varying(10) NOT NULL,
    clipboard_id integer,
    user_id integer NOT NULL
);


ALTER TABLE public.cms_usersettings OWNER TO venture;

--
-- Name: cms_usersettings_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.cms_usersettings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cms_usersettings_id_seq OWNER TO venture;

--
-- Name: cms_usersettings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.cms_usersettings_id_seq OWNED BY public.cms_usersettings.id;


--
-- Name: crowdfunding_campaign; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.crowdfunding_campaign (
    id integer NOT NULL,
    campaign_name character varying(255) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    company_name character varying(255) NOT NULL,
    company_email character varying(254) NOT NULL,
    duration date NOT NULL,
    target_amount numeric(19,2) NOT NULL,
    total_funds_received numeric(19,2),
    campaign_status character varying(100) NOT NULL,
    campaign_image character varying(100),
    short_description text NOT NULL,
    long_description text,
    funds_disbursement_status character varying(100) NOT NULL,
    campaign_owner_id integer NOT NULL,
    sector_id integer NOT NULL,
    approved boolean NOT NULL,
    approved_by_id integer,
    comments text,
    rejected boolean NOT NULL,
    rejected_by_id integer,
    approval_status character varying(100),
    campaign_reward_details text,
    campaign_reward_threshold numeric(19,2),
    campaign_type character varying(100),
    minimum_donation numeric(19,2) NOT NULL
);


ALTER TABLE public.crowdfunding_campaign OWNER TO venture;

--
-- Name: crowdfunding_campaign_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.crowdfunding_campaign_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crowdfunding_campaign_id_seq OWNER TO venture;

--
-- Name: crowdfunding_campaign_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.crowdfunding_campaign_id_seq OWNED BY public.crowdfunding_campaign.id;


--
-- Name: crowdfunding_campaignconfiguration; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.crowdfunding_campaignconfiguration (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    transaction_fee_type character varying(100) NOT NULL,
    transaction_fee numeric(19,2) NOT NULL,
    processing_fee_type character varying(100) NOT NULL,
    processing_fee numeric(19,2) NOT NULL,
    added_by_id integer NOT NULL
);


ALTER TABLE public.crowdfunding_campaignconfiguration OWNER TO venture;

--
-- Name: crowdfunding_campaignconfiguration_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.crowdfunding_campaignconfiguration_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crowdfunding_campaignconfiguration_id_seq OWNER TO venture;

--
-- Name: crowdfunding_campaignconfiguration_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.crowdfunding_campaignconfiguration_id_seq OWNED BY public.crowdfunding_campaignconfiguration.id;


--
-- Name: crowdfunding_campaigndisbursement; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.crowdfunding_campaigndisbursement (
    id integer NOT NULL,
    amount numeric(19,2) NOT NULL,
    disbursement_type character varying(100),
    disbursement_method character varying(100),
    disbursement_status character varying(100) NOT NULL,
    approved boolean NOT NULL,
    rejected boolean NOT NULL,
    disbursement_order_number character varying(255),
    disbursed boolean NOT NULL,
    approved_by_id integer,
    campaign_id integer NOT NULL,
    recipient_id integer NOT NULL,
    rejected_by_id integer,
    created_at timestamp with time zone,
    recipient_email character varying(255),
    approval_status character varying(100),
    campaign_target numeric(19,2),
    campaign_duration date
);


ALTER TABLE public.crowdfunding_campaigndisbursement OWNER TO venture;

--
-- Name: crowdfunding_campaigndisbursement_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.crowdfunding_campaigndisbursement_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crowdfunding_campaigndisbursement_id_seq OWNER TO venture;

--
-- Name: crowdfunding_campaigndisbursement_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.crowdfunding_campaigndisbursement_id_seq OWNED BY public.crowdfunding_campaigndisbursement.id;


--
-- Name: crowdfunding_campaignpayment; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.crowdfunding_campaignpayment (
    id integer NOT NULL,
    amount numeric(19,2) NOT NULL,
    payment_method character varying(100) NOT NULL,
    payment_status character varying(100) NOT NULL,
    payment_order_number character varying(255),
    paid boolean NOT NULL,
    campaign_id integer NOT NULL,
    donator_id integer,
    comments text,
    created_at timestamp with time zone,
    allow_visibility boolean NOT NULL,
    donator_email character varying(255),
    donator_phoneno character varying(255),
    payment_payer_id character varying(255)
);


ALTER TABLE public.crowdfunding_campaignpayment OWNER TO venture;

--
-- Name: crowdfunding_campaignpayment_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.crowdfunding_campaignpayment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crowdfunding_campaignpayment_id_seq OWNER TO venture;

--
-- Name: crowdfunding_campaignpayment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.crowdfunding_campaignpayment_id_seq OWNED BY public.crowdfunding_campaignpayment.id;


--
-- Name: crowdfunding_campaignreward; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.crowdfunding_campaignreward (
    id integer NOT NULL,
    created_at timestamp with time zone,
    reward text NOT NULL,
    reward_status character varying(100),
    comments text,
    campaign_id integer NOT NULL,
    payment_id integer NOT NULL,
    rewarded_user_id integer,
    rewarded_user_email character varying(255)
);


ALTER TABLE public.crowdfunding_campaignreward OWNER TO venture;

--
-- Name: crowdfunding_campaignreward_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.crowdfunding_campaignreward_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crowdfunding_campaignreward_id_seq OWNER TO venture;

--
-- Name: crowdfunding_campaignreward_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.crowdfunding_campaignreward_id_seq OWNED BY public.crowdfunding_campaignreward.id;


--
-- Name: crowdfunding_campaignsector; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.crowdfunding_campaignsector (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    added_by_id integer NOT NULL
);


ALTER TABLE public.crowdfunding_campaignsector OWNER TO venture;

--
-- Name: crowdfunding_campaignsector_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.crowdfunding_campaignsector_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crowdfunding_campaignsector_id_seq OWNER TO venture;

--
-- Name: crowdfunding_campaignsector_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.crowdfunding_campaignsector_id_seq OWNED BY public.crowdfunding_campaignsector.id;


--
-- Name: crowdfunding_mpesaapitoken; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.crowdfunding_mpesaapitoken (
    id integer NOT NULL,
    token text NOT NULL,
    created_at timestamp with time zone,
    status character varying(255) NOT NULL
);


ALTER TABLE public.crowdfunding_mpesaapitoken OWNER TO venture;

--
-- Name: crowdfunding_mpesaapitoken_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.crowdfunding_mpesaapitoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crowdfunding_mpesaapitoken_id_seq OWNER TO venture;

--
-- Name: crowdfunding_mpesaapitoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.crowdfunding_mpesaapitoken_id_seq OWNED BY public.crowdfunding_mpesaapitoken.id;


--
-- Name: crowdfunding_mpesac2bnotification; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.crowdfunding_mpesac2bnotification (
    id integer NOT NULL,
    created_at timestamp with time zone,
    account_name character varying(255) NOT NULL,
    amount_received character varying(255) NOT NULL,
    phone_number character varying(255) NOT NULL,
    reference_code character varying(255) NOT NULL,
    shortcode character varying(255) NOT NULL,
    payment_id integer NOT NULL
);


ALTER TABLE public.crowdfunding_mpesac2bnotification OWNER TO venture;

--
-- Name: crowdfunding_mpesac2bnotification_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.crowdfunding_mpesac2bnotification_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crowdfunding_mpesac2bnotification_id_seq OWNER TO venture;

--
-- Name: crowdfunding_mpesac2bnotification_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.crowdfunding_mpesac2bnotification_id_seq OWNED BY public.crowdfunding_mpesac2bnotification.id;


--
-- Name: crowdfunding_mpesac2bregister; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.crowdfunding_mpesac2bregister (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp with time zone,
    request_json text NOT NULL,
    response_json text NOT NULL,
    response_code integer NOT NULL
);


ALTER TABLE public.crowdfunding_mpesac2bregister OWNER TO venture;

--
-- Name: crowdfunding_mpesac2bregister_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.crowdfunding_mpesac2bregister_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crowdfunding_mpesac2bregister_id_seq OWNER TO venture;

--
-- Name: crowdfunding_mpesac2bregister_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.crowdfunding_mpesac2bregister_id_seq OWNED BY public.crowdfunding_mpesac2bregister.id;


--
-- Name: crowdfunding_mpesastkpush; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.crowdfunding_mpesastkpush (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp with time zone,
    request_json text NOT NULL,
    response_json text NOT NULL,
    response_code integer NOT NULL,
    payment_id integer,
    "checkoutID" text
);


ALTER TABLE public.crowdfunding_mpesastkpush OWNER TO venture;

--
-- Name: crowdfunding_mpesastkpush_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.crowdfunding_mpesastkpush_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crowdfunding_mpesastkpush_id_seq OWNER TO venture;

--
-- Name: crowdfunding_mpesastkpush_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.crowdfunding_mpesastkpush_id_seq OWNED BY public.crowdfunding_mpesastkpush.id;


--
-- Name: crowdfunding_mpesastkresponse; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.crowdfunding_mpesastkresponse (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp with time zone,
    response_json text NOT NULL
);


ALTER TABLE public.crowdfunding_mpesastkresponse OWNER TO venture;

--
-- Name: crowdfunding_mpesastkresponse_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.crowdfunding_mpesastkresponse_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crowdfunding_mpesastkresponse_id_seq OWNER TO venture;

--
-- Name: crowdfunding_mpesastkresponse_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.crowdfunding_mpesastkresponse_id_seq OWNED BY public.crowdfunding_mpesastkresponse.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO venture;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO venture;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO venture;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO venture;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO venture;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO venture;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO venture;

--
-- Name: django_site; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.django_site OWNER TO venture;

--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.django_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_site_id_seq OWNER TO venture;

--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;


--
-- Name: djangocms_column_column; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.djangocms_column_column (
    cmsplugin_ptr_id integer NOT NULL,
    width character varying(50) NOT NULL
);


ALTER TABLE public.djangocms_column_column OWNER TO venture;

--
-- Name: djangocms_column_multicolumns; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.djangocms_column_multicolumns (
    cmsplugin_ptr_id integer NOT NULL
);


ALTER TABLE public.djangocms_column_multicolumns OWNER TO venture;

--
-- Name: djangocms_file_file; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.djangocms_file_file (
    cmsplugin_ptr_id integer NOT NULL,
    file_name character varying(255) NOT NULL,
    link_target character varying(255) NOT NULL,
    link_title character varying(255) NOT NULL,
    file_src_id integer,
    attributes text NOT NULL,
    template character varying(255) NOT NULL,
    show_file_size boolean NOT NULL
);


ALTER TABLE public.djangocms_file_file OWNER TO venture;

--
-- Name: djangocms_file_folder; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.djangocms_file_folder (
    template character varying(255) NOT NULL,
    link_target character varying(255) NOT NULL,
    show_file_size boolean NOT NULL,
    attributes text NOT NULL,
    cmsplugin_ptr_id integer NOT NULL,
    folder_src_id integer
);


ALTER TABLE public.djangocms_file_folder OWNER TO venture;

--
-- Name: djangocms_googlemap_googlemap; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.djangocms_googlemap_googlemap (
    cmsplugin_ptr_id integer NOT NULL,
    title character varying(255) NOT NULL,
    zoom smallint NOT NULL,
    lat double precision,
    lng double precision,
    width character varying(6) NOT NULL,
    height character varying(6) NOT NULL,
    scrollwheel boolean NOT NULL,
    double_click_zoom boolean NOT NULL,
    draggable boolean NOT NULL,
    keyboard_shortcuts boolean NOT NULL,
    pan_control boolean NOT NULL,
    zoom_control boolean NOT NULL,
    street_view_control boolean NOT NULL,
    style text NOT NULL,
    fullscreen_control boolean NOT NULL,
    map_type_control character varying(255) NOT NULL,
    rotate_control boolean NOT NULL,
    scale_control boolean NOT NULL,
    template character varying(255) NOT NULL,
    CONSTRAINT djangocms_googlemap_googlemap_zoom_check CHECK ((zoom >= 0))
);


ALTER TABLE public.djangocms_googlemap_googlemap OWNER TO venture;

--
-- Name: djangocms_googlemap_googlemapmarker; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.djangocms_googlemap_googlemapmarker (
    cmsplugin_ptr_id integer NOT NULL,
    title character varying(255) NOT NULL,
    address character varying(255) NOT NULL,
    lat numeric(10,6),
    lng numeric(10,6),
    show_content boolean NOT NULL,
    info_content text NOT NULL,
    icon_id integer
);


ALTER TABLE public.djangocms_googlemap_googlemapmarker OWNER TO venture;

--
-- Name: djangocms_googlemap_googlemaproute; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.djangocms_googlemap_googlemaproute (
    cmsplugin_ptr_id integer NOT NULL,
    title character varying(255) NOT NULL,
    origin character varying(255) NOT NULL,
    destination character varying(255) NOT NULL,
    travel_mode character varying(255) NOT NULL
);


ALTER TABLE public.djangocms_googlemap_googlemaproute OWNER TO venture;

--
-- Name: djangocms_link_link; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.djangocms_link_link (
    cmsplugin_ptr_id integer NOT NULL,
    name character varying(255) NOT NULL,
    external_link character varying(2040) NOT NULL,
    anchor character varying(255) NOT NULL,
    mailto character varying(255) NOT NULL,
    phone character varying(255) NOT NULL,
    target character varying(255) NOT NULL,
    internal_link_id integer,
    attributes text NOT NULL,
    template character varying(255) NOT NULL
);


ALTER TABLE public.djangocms_link_link OWNER TO venture;

--
-- Name: djangocms_picture_picture; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.djangocms_picture_picture (
    cmsplugin_ptr_id integer NOT NULL,
    link_url character varying(2040) NOT NULL,
    alignment character varying(255) NOT NULL,
    link_page_id integer,
    height integer,
    width integer,
    picture_id integer,
    attributes text NOT NULL,
    caption_text text NOT NULL,
    link_attributes text NOT NULL,
    link_target character varying(255) NOT NULL,
    use_automatic_scaling boolean NOT NULL,
    use_crop boolean NOT NULL,
    use_no_cropping boolean NOT NULL,
    use_upscale boolean NOT NULL,
    thumbnail_options_id integer,
    external_picture character varying(255) NOT NULL,
    template character varying(255) NOT NULL,
    use_responsive_image character varying(7) NOT NULL,
    CONSTRAINT djangocms_picture_picture_height_3db3e080_check CHECK ((height >= 0)),
    CONSTRAINT djangocms_picture_picture_width_5bba3699_check CHECK ((width >= 0))
);


ALTER TABLE public.djangocms_picture_picture OWNER TO venture;

--
-- Name: djangocms_snippet_snippet; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.djangocms_snippet_snippet (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    html text NOT NULL,
    template character varying(255) NOT NULL,
    slug character varying(255) NOT NULL
);


ALTER TABLE public.djangocms_snippet_snippet OWNER TO venture;

--
-- Name: djangocms_snippet_snippet_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.djangocms_snippet_snippet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.djangocms_snippet_snippet_id_seq OWNER TO venture;

--
-- Name: djangocms_snippet_snippet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.djangocms_snippet_snippet_id_seq OWNED BY public.djangocms_snippet_snippet.id;


--
-- Name: djangocms_snippet_snippetptr; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.djangocms_snippet_snippetptr (
    cmsplugin_ptr_id integer NOT NULL,
    snippet_id integer NOT NULL
);


ALTER TABLE public.djangocms_snippet_snippetptr OWNER TO venture;

--
-- Name: djangocms_style_style; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.djangocms_style_style (
    cmsplugin_ptr_id integer NOT NULL,
    class_name character varying(255) NOT NULL,
    tag_type character varying(255) NOT NULL,
    padding_left smallint,
    padding_right smallint,
    padding_top smallint,
    padding_bottom smallint,
    margin_left smallint,
    margin_right smallint,
    margin_top smallint,
    margin_bottom smallint,
    additional_classes character varying(255) NOT NULL,
    attributes text NOT NULL,
    id_name character varying(255) NOT NULL,
    label character varying(255) NOT NULL,
    template character varying(255) NOT NULL,
    CONSTRAINT djangocms_style_style_margin_bottom_08e7c851_check CHECK ((margin_bottom >= 0)),
    CONSTRAINT djangocms_style_style_margin_left_e51dea0a_check CHECK ((margin_left >= 0)),
    CONSTRAINT djangocms_style_style_margin_right_40a4928b_check CHECK ((margin_right >= 0)),
    CONSTRAINT djangocms_style_style_margin_top_929f0506_check CHECK ((margin_top >= 0)),
    CONSTRAINT djangocms_style_style_padding_bottom_566948a6_check CHECK ((padding_bottom >= 0)),
    CONSTRAINT djangocms_style_style_padding_left_2426413b_check CHECK ((padding_left >= 0)),
    CONSTRAINT djangocms_style_style_padding_right_90146b20_check CHECK ((padding_right >= 0)),
    CONSTRAINT djangocms_style_style_padding_top_fbca5ac1_check CHECK ((padding_top >= 0))
);


ALTER TABLE public.djangocms_style_style OWNER TO venture;

--
-- Name: djangocms_text_ckeditor_text; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.djangocms_text_ckeditor_text (
    cmsplugin_ptr_id integer NOT NULL,
    body text NOT NULL
);


ALTER TABLE public.djangocms_text_ckeditor_text OWNER TO venture;

--
-- Name: djangocms_video_videoplayer; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.djangocms_video_videoplayer (
    cmsplugin_ptr_id integer NOT NULL,
    embed_link character varying(255) NOT NULL,
    poster_id integer,
    attributes text NOT NULL,
    label character varying(255) NOT NULL,
    template character varying(255) NOT NULL,
    parameters text NOT NULL
);


ALTER TABLE public.djangocms_video_videoplayer OWNER TO venture;

--
-- Name: djangocms_video_videosource; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.djangocms_video_videosource (
    cmsplugin_ptr_id integer NOT NULL,
    text_title character varying(255) NOT NULL,
    text_description text NOT NULL,
    attributes text NOT NULL,
    source_file_id integer
);


ALTER TABLE public.djangocms_video_videosource OWNER TO venture;

--
-- Name: djangocms_video_videotrack; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.djangocms_video_videotrack (
    cmsplugin_ptr_id integer NOT NULL,
    kind character varying(255) NOT NULL,
    srclang character varying(255) NOT NULL,
    label character varying(255) NOT NULL,
    attributes text NOT NULL,
    src_id integer
);


ALTER TABLE public.djangocms_video_videotrack OWNER TO venture;

--
-- Name: easy_thumbnails_source; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.easy_thumbnails_source (
    id integer NOT NULL,
    storage_hash character varying(40) NOT NULL,
    name character varying(255) NOT NULL,
    modified timestamp with time zone NOT NULL
);


ALTER TABLE public.easy_thumbnails_source OWNER TO venture;

--
-- Name: easy_thumbnails_source_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.easy_thumbnails_source_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.easy_thumbnails_source_id_seq OWNER TO venture;

--
-- Name: easy_thumbnails_source_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.easy_thumbnails_source_id_seq OWNED BY public.easy_thumbnails_source.id;


--
-- Name: easy_thumbnails_thumbnail; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.easy_thumbnails_thumbnail (
    id integer NOT NULL,
    storage_hash character varying(40) NOT NULL,
    name character varying(255) NOT NULL,
    modified timestamp with time zone NOT NULL,
    source_id integer NOT NULL
);


ALTER TABLE public.easy_thumbnails_thumbnail OWNER TO venture;

--
-- Name: easy_thumbnails_thumbnail_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.easy_thumbnails_thumbnail_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.easy_thumbnails_thumbnail_id_seq OWNER TO venture;

--
-- Name: easy_thumbnails_thumbnail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.easy_thumbnails_thumbnail_id_seq OWNED BY public.easy_thumbnails_thumbnail.id;


--
-- Name: easy_thumbnails_thumbnaildimensions; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.easy_thumbnails_thumbnaildimensions (
    id integer NOT NULL,
    thumbnail_id integer NOT NULL,
    width integer,
    height integer,
    CONSTRAINT easy_thumbnails_thumbnaildimensions_height_check CHECK ((height >= 0)),
    CONSTRAINT easy_thumbnails_thumbnaildimensions_width_check CHECK ((width >= 0))
);


ALTER TABLE public.easy_thumbnails_thumbnaildimensions OWNER TO venture;

--
-- Name: easy_thumbnails_thumbnaildimensions_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.easy_thumbnails_thumbnaildimensions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.easy_thumbnails_thumbnaildimensions_id_seq OWNER TO venture;

--
-- Name: easy_thumbnails_thumbnaildimensions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.easy_thumbnails_thumbnaildimensions_id_seq OWNED BY public.easy_thumbnails_thumbnaildimensions.id;


--
-- Name: events_attendees; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.events_attendees (
    id integer NOT NULL,
    registration_date timestamp with time zone NOT NULL,
    attendee_id integer NOT NULL,
    event_id integer NOT NULL
);


ALTER TABLE public.events_attendees OWNER TO venture;

--
-- Name: events_attendees_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.events_attendees_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.events_attendees_id_seq OWNER TO venture;

--
-- Name: events_attendees_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.events_attendees_id_seq OWNED BY public.events_attendees.id;


--
-- Name: events_eventcategory; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.events_eventcategory (
    id integer NOT NULL,
    title character varying(50) NOT NULL,
    date timestamp with time zone NOT NULL,
    published boolean NOT NULL,
    author_id integer NOT NULL
);


ALTER TABLE public.events_eventcategory OWNER TO venture;

--
-- Name: events_eventcategory_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.events_eventcategory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.events_eventcategory_id_seq OWNER TO venture;

--
-- Name: events_eventcategory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.events_eventcategory_id_seq OWNED BY public.events_eventcategory.id;


--
-- Name: events_events; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.events_events (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    published boolean NOT NULL,
    description text NOT NULL,
    start_date timestamp with time zone NOT NULL,
    end_date timestamp with time zone NOT NULL,
    location character varying(100) NOT NULL,
    date timestamp with time zone NOT NULL,
    registration_url character varying(50),
    registration_required character varying(100) NOT NULL,
    event_banner character varying(100),
    author_id integer NOT NULL,
    category_id integer
);


ALTER TABLE public.events_events OWNER TO venture;

--
-- Name: events_events_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.events_events_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.events_events_id_seq OWNER TO venture;

--
-- Name: events_events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.events_events_id_seq OWNED BY public.events_events.id;


--
-- Name: events_networkevents; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.events_networkevents (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    published boolean NOT NULL,
    organization_name character varying(100) NOT NULL,
    description text NOT NULL,
    start_date timestamp with time zone NOT NULL,
    end_date timestamp with time zone NOT NULL,
    location character varying(100) NOT NULL,
    date timestamp with time zone NOT NULL,
    registration_url character varying(250),
    registration_required character varying(100) NOT NULL,
    event_banner character varying(100),
    author_id integer NOT NULL,
    category_id integer
);


ALTER TABLE public.events_networkevents OWNER TO venture;

--
-- Name: events_networkevents_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.events_networkevents_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.events_networkevents_id_seq OWNER TO venture;

--
-- Name: events_networkevents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.events_networkevents_id_seq OWNED BY public.events_networkevents.id;


--
-- Name: filer_clipboard; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.filer_clipboard (
    id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.filer_clipboard OWNER TO venture;

--
-- Name: filer_clipboard_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.filer_clipboard_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.filer_clipboard_id_seq OWNER TO venture;

--
-- Name: filer_clipboard_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.filer_clipboard_id_seq OWNED BY public.filer_clipboard.id;


--
-- Name: filer_clipboarditem; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.filer_clipboarditem (
    id integer NOT NULL,
    clipboard_id integer NOT NULL,
    file_id integer NOT NULL
);


ALTER TABLE public.filer_clipboarditem OWNER TO venture;

--
-- Name: filer_clipboarditem_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.filer_clipboarditem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.filer_clipboarditem_id_seq OWNER TO venture;

--
-- Name: filer_clipboarditem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.filer_clipboarditem_id_seq OWNED BY public.filer_clipboarditem.id;


--
-- Name: filer_file; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.filer_file (
    id integer NOT NULL,
    file character varying(255),
    _file_size bigint,
    sha1 character varying(40) NOT NULL,
    has_all_mandatory_data boolean NOT NULL,
    original_filename character varying(255),
    name character varying(255) NOT NULL,
    description text,
    uploaded_at timestamp with time zone NOT NULL,
    modified_at timestamp with time zone NOT NULL,
    is_public boolean NOT NULL,
    folder_id integer,
    owner_id integer,
    polymorphic_ctype_id integer
);


ALTER TABLE public.filer_file OWNER TO venture;

--
-- Name: filer_file_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.filer_file_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.filer_file_id_seq OWNER TO venture;

--
-- Name: filer_file_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.filer_file_id_seq OWNED BY public.filer_file.id;


--
-- Name: filer_folder; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.filer_folder (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    uploaded_at timestamp with time zone NOT NULL,
    created_at timestamp with time zone NOT NULL,
    modified_at timestamp with time zone NOT NULL,
    lft integer NOT NULL,
    rght integer NOT NULL,
    tree_id integer NOT NULL,
    level integer NOT NULL,
    owner_id integer,
    parent_id integer,
    CONSTRAINT filer_folder_level_check CHECK ((level >= 0)),
    CONSTRAINT filer_folder_lft_check CHECK ((lft >= 0)),
    CONSTRAINT filer_folder_rght_check CHECK ((rght >= 0)),
    CONSTRAINT filer_folder_tree_id_check CHECK ((tree_id >= 0))
);


ALTER TABLE public.filer_folder OWNER TO venture;

--
-- Name: filer_folder_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.filer_folder_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.filer_folder_id_seq OWNER TO venture;

--
-- Name: filer_folder_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.filer_folder_id_seq OWNED BY public.filer_folder.id;


--
-- Name: filer_folderpermission; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.filer_folderpermission (
    id integer NOT NULL,
    type smallint NOT NULL,
    everybody boolean NOT NULL,
    can_edit smallint,
    can_read smallint,
    can_add_children smallint,
    folder_id integer,
    group_id integer,
    user_id integer
);


ALTER TABLE public.filer_folderpermission OWNER TO venture;

--
-- Name: filer_folderpermission_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.filer_folderpermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.filer_folderpermission_id_seq OWNER TO venture;

--
-- Name: filer_folderpermission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.filer_folderpermission_id_seq OWNED BY public.filer_folderpermission.id;


--
-- Name: filer_image; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.filer_image (
    file_ptr_id integer NOT NULL,
    _height integer,
    _width integer,
    date_taken timestamp with time zone,
    default_alt_text character varying(255),
    default_caption character varying(255),
    author character varying(255),
    must_always_publish_author_credit boolean NOT NULL,
    must_always_publish_copyright boolean NOT NULL,
    subject_location character varying(64) NOT NULL
);


ALTER TABLE public.filer_image OWNER TO venture;

--
-- Name: filer_thumbnailoption; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.filer_thumbnailoption (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    width integer NOT NULL,
    height integer NOT NULL,
    crop boolean NOT NULL,
    upscale boolean NOT NULL
);


ALTER TABLE public.filer_thumbnailoption OWNER TO venture;

--
-- Name: filer_thumbnailoption_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.filer_thumbnailoption_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.filer_thumbnailoption_id_seq OWNER TO venture;

--
-- Name: filer_thumbnailoption_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.filer_thumbnailoption_id_seq OWNED BY public.filer_thumbnailoption.id;


--
-- Name: jet_bookmark; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.jet_bookmark (
    id integer NOT NULL,
    url character varying(200) NOT NULL,
    title character varying(255) NOT NULL,
    "user" integer NOT NULL,
    date_add timestamp with time zone NOT NULL,
    CONSTRAINT jet_bookmark_user_check CHECK (("user" >= 0))
);


ALTER TABLE public.jet_bookmark OWNER TO venture;

--
-- Name: jet_bookmark_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.jet_bookmark_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jet_bookmark_id_seq OWNER TO venture;

--
-- Name: jet_bookmark_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.jet_bookmark_id_seq OWNED BY public.jet_bookmark.id;


--
-- Name: jet_pinnedapplication; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.jet_pinnedapplication (
    id integer NOT NULL,
    app_label character varying(255) NOT NULL,
    "user" integer NOT NULL,
    date_add timestamp with time zone NOT NULL,
    CONSTRAINT jet_pinnedapplication_user_check CHECK (("user" >= 0))
);


ALTER TABLE public.jet_pinnedapplication OWNER TO venture;

--
-- Name: jet_pinnedapplication_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.jet_pinnedapplication_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jet_pinnedapplication_id_seq OWNER TO venture;

--
-- Name: jet_pinnedapplication_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.jet_pinnedapplication_id_seq OWNED BY public.jet_pinnedapplication.id;


--
-- Name: knowledge_center_audiovisual; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.knowledge_center_audiovisual (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    date timestamp with time zone NOT NULL,
    path text,
    category character varying(100) NOT NULL,
    published boolean NOT NULL,
    payment_status character varying(100) NOT NULL,
    description text NOT NULL,
    author character varying(250),
    sub_category_id integer,
    created_by_id integer,
    thumbnail_image character varying(100),
    video_file character varying(100)
);


ALTER TABLE public.knowledge_center_audiovisual OWNER TO venture;

--
-- Name: knowledge_center_audiovisual_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.knowledge_center_audiovisual_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.knowledge_center_audiovisual_id_seq OWNER TO venture;

--
-- Name: knowledge_center_audiovisual_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.knowledge_center_audiovisual_id_seq OWNED BY public.knowledge_center_audiovisual.id;


--
-- Name: knowledge_center_documentcategory; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.knowledge_center_documentcategory (
    id integer NOT NULL,
    title character varying(50) NOT NULL,
    date timestamp with time zone NOT NULL,
    published boolean NOT NULL,
    author_id integer NOT NULL
);


ALTER TABLE public.knowledge_center_documentcategory OWNER TO venture;

--
-- Name: knowledge_center_documentcategory_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.knowledge_center_documentcategory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.knowledge_center_documentcategory_id_seq OWNER TO venture;

--
-- Name: knowledge_center_documentcategory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.knowledge_center_documentcategory_id_seq OWNED BY public.knowledge_center_documentcategory.id;


--
-- Name: knowledge_center_subdocumentcategory; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.knowledge_center_subdocumentcategory (
    id integer NOT NULL,
    title character varying(50) NOT NULL,
    date timestamp with time zone NOT NULL,
    published boolean NOT NULL,
    author_id integer NOT NULL,
    category_id integer NOT NULL
);


ALTER TABLE public.knowledge_center_subdocumentcategory OWNER TO venture;

--
-- Name: knowledge_center_subdocumentcategory_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.knowledge_center_subdocumentcategory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.knowledge_center_subdocumentcategory_id_seq OWNER TO venture;

--
-- Name: knowledge_center_subdocumentcategory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.knowledge_center_subdocumentcategory_id_seq OWNED BY public.knowledge_center_subdocumentcategory.id;


--
-- Name: knowledge_center_textcenter; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.knowledge_center_textcenter (
    id integer NOT NULL,
    title character varying(250) NOT NULL,
    published boolean NOT NULL,
    description text,
    date timestamp with time zone NOT NULL,
    payment_status character varying(100) NOT NULL,
    file_upload character varying(100),
    author character varying(250),
    category_id integer,
    sub_category_id integer,
    created_by_id integer,
    external_url character varying(100)
);


ALTER TABLE public.knowledge_center_textcenter OWNER TO venture;

--
-- Name: knowledge_center_textcenter_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.knowledge_center_textcenter_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.knowledge_center_textcenter_id_seq OWNER TO venture;

--
-- Name: knowledge_center_textcenter_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.knowledge_center_textcenter_id_seq OWNED BY public.knowledge_center_textcenter.id;


--
-- Name: knowledge_center_videocategory; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.knowledge_center_videocategory (
    id integer NOT NULL,
    title character varying(50) NOT NULL,
    date timestamp with time zone NOT NULL,
    published boolean NOT NULL,
    author_id integer NOT NULL
);


ALTER TABLE public.knowledge_center_videocategory OWNER TO venture;

--
-- Name: knowledge_center_videocategory_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.knowledge_center_videocategory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.knowledge_center_videocategory_id_seq OWNER TO venture;

--
-- Name: knowledge_center_videocategory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.knowledge_center_videocategory_id_seq OWNED BY public.knowledge_center_videocategory.id;


--
-- Name: menus_cachekey; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.menus_cachekey (
    id integer NOT NULL,
    language character varying(255) NOT NULL,
    site integer NOT NULL,
    key character varying(255) NOT NULL,
    CONSTRAINT menus_cachekey_site_check CHECK ((site >= 0))
);


ALTER TABLE public.menus_cachekey OWNER TO venture;

--
-- Name: menus_cachekey_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.menus_cachekey_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.menus_cachekey_id_seq OWNER TO venture;

--
-- Name: menus_cachekey_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.menus_cachekey_id_seq OWNED BY public.menus_cachekey.id;


--
-- Name: social_auth_association; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.social_auth_association (
    id integer NOT NULL,
    server_url character varying(255) NOT NULL,
    handle character varying(255) NOT NULL,
    secret character varying(255) NOT NULL,
    issued integer NOT NULL,
    lifetime integer NOT NULL,
    assoc_type character varying(64) NOT NULL
);


ALTER TABLE public.social_auth_association OWNER TO venture;

--
-- Name: social_auth_association_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.social_auth_association_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.social_auth_association_id_seq OWNER TO venture;

--
-- Name: social_auth_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.social_auth_association_id_seq OWNED BY public.social_auth_association.id;


--
-- Name: social_auth_code; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.social_auth_code (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    code character varying(32) NOT NULL,
    verified boolean NOT NULL,
    "timestamp" timestamp with time zone NOT NULL
);


ALTER TABLE public.social_auth_code OWNER TO venture;

--
-- Name: social_auth_code_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.social_auth_code_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.social_auth_code_id_seq OWNER TO venture;

--
-- Name: social_auth_code_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.social_auth_code_id_seq OWNED BY public.social_auth_code.id;


--
-- Name: social_auth_nonce; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.social_auth_nonce (
    id integer NOT NULL,
    server_url character varying(255) NOT NULL,
    "timestamp" integer NOT NULL,
    salt character varying(65) NOT NULL
);


ALTER TABLE public.social_auth_nonce OWNER TO venture;

--
-- Name: social_auth_nonce_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.social_auth_nonce_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.social_auth_nonce_id_seq OWNER TO venture;

--
-- Name: social_auth_nonce_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.social_auth_nonce_id_seq OWNED BY public.social_auth_nonce.id;


--
-- Name: social_auth_partial; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.social_auth_partial (
    id integer NOT NULL,
    token character varying(32) NOT NULL,
    next_step smallint NOT NULL,
    backend character varying(32) NOT NULL,
    data text NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    CONSTRAINT social_auth_partial_next_step_check CHECK ((next_step >= 0))
);


ALTER TABLE public.social_auth_partial OWNER TO venture;

--
-- Name: social_auth_partial_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.social_auth_partial_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.social_auth_partial_id_seq OWNER TO venture;

--
-- Name: social_auth_partial_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.social_auth_partial_id_seq OWNED BY public.social_auth_partial.id;


--
-- Name: social_auth_usersocialauth; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.social_auth_usersocialauth (
    id integer NOT NULL,
    provider character varying(32) NOT NULL,
    uid character varying(255) NOT NULL,
    extra_data text NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.social_auth_usersocialauth OWNER TO venture;

--
-- Name: social_auth_usersocialauth_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.social_auth_usersocialauth_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.social_auth_usersocialauth_id_seq OWNER TO venture;

--
-- Name: social_auth_usersocialauth_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.social_auth_usersocialauth_id_seq OWNED BY public.social_auth_usersocialauth.id;


--
-- Name: venturelift_media_audiovisual; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.venturelift_media_audiovisual (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    date timestamp with time zone NOT NULL,
    path text NOT NULL,
    vla_tv boolean NOT NULL,
    category character varying(100) NOT NULL,
    author_id integer NOT NULL,
    sub_category_id integer,
    priority boolean NOT NULL
);


ALTER TABLE public.venturelift_media_audiovisual OWNER TO venture;

--
-- Name: venturelift_media_audiovisual_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.venturelift_media_audiovisual_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.venturelift_media_audiovisual_id_seq OWNER TO venture;

--
-- Name: venturelift_media_audiovisual_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.venturelift_media_audiovisual_id_seq OWNED BY public.venturelift_media_audiovisual.id;


--
-- Name: venturelift_media_category; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.venturelift_media_category (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    author_id integer NOT NULL
);


ALTER TABLE public.venturelift_media_category OWNER TO venture;

--
-- Name: venturelift_media_category_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.venturelift_media_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.venturelift_media_category_id_seq OWNER TO venture;

--
-- Name: venturelift_media_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.venturelift_media_category_id_seq OWNED BY public.venturelift_media_category.id;


--
-- Name: venturelift_media_newsletter; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.venturelift_media_newsletter (
    id integer NOT NULL,
    title character varying(250) NOT NULL,
    body text NOT NULL,
    recipients text,
    date timestamp with time zone NOT NULL
);


ALTER TABLE public.venturelift_media_newsletter OWNER TO venture;

--
-- Name: venturelift_media_newsletter_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.venturelift_media_newsletter_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.venturelift_media_newsletter_id_seq OWNER TO venture;

--
-- Name: venturelift_media_newsletter_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.venturelift_media_newsletter_id_seq OWNED BY public.venturelift_media_newsletter.id;


--
-- Name: venturelift_media_subscription; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.venturelift_media_subscription (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    is_active boolean NOT NULL
);


ALTER TABLE public.venturelift_media_subscription OWNER TO venture;

--
-- Name: venturelift_media_subscription_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.venturelift_media_subscription_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.venturelift_media_subscription_id_seq OWNER TO venture;

--
-- Name: venturelift_media_subscription_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.venturelift_media_subscription_id_seq OWNED BY public.venturelift_media_subscription.id;


--
-- Name: venturelift_media_textmedia; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.venturelift_media_textmedia (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    body text NOT NULL,
    date timestamp with time zone NOT NULL,
    author_id integer NOT NULL,
    category_id integer,
    thumbnail_image character varying(100),
    priority boolean NOT NULL
);


ALTER TABLE public.venturelift_media_textmedia OWNER TO venture;

--
-- Name: venturelift_media_textmedia_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.venturelift_media_textmedia_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.venturelift_media_textmedia_id_seq OWNER TO venture;

--
-- Name: venturelift_media_textmedia_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.venturelift_media_textmedia_id_seq OWNED BY public.venturelift_media_textmedia.id;


--
-- Name: venturelift_profiles_allsystemuser; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.venturelift_profiles_allsystemuser (
    id integer NOT NULL,
    created_at timestamp with time zone,
    username character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    user_type character varying(255) NOT NULL
);


ALTER TABLE public.venturelift_profiles_allsystemuser OWNER TO venture;

--
-- Name: venturelift_profiles_allsystemuser_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.venturelift_profiles_allsystemuser_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.venturelift_profiles_allsystemuser_id_seq OWNER TO venture;

--
-- Name: venturelift_profiles_allsystemuser_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.venturelift_profiles_allsystemuser_id_seq OWNED BY public.venturelift_profiles_allsystemuser.id;


--
-- Name: venturelift_profiles_business; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.venturelift_profiles_business (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    size character varying(100) NOT NULL,
    thumbnail_image character varying(100),
    company_primary_email character varying(254) NOT NULL,
    company_website character varying(200),
    address character varying(2) NOT NULL,
    year_of_company_registration integer NOT NULL,
    value_proposition_statement text,
    full_time_employee_count integer NOT NULL,
    verified boolean NOT NULL,
    creator_id integer NOT NULL,
    sector_id integer NOT NULL,
    verified_by_id integer,
    gender character varying(200) NOT NULL,
    sample_profile boolean NOT NULL,
    about text
);


ALTER TABLE public.venturelift_profiles_business OWNER TO venture;

--
-- Name: venturelift_profiles_business_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.venturelift_profiles_business_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.venturelift_profiles_business_id_seq OWNER TO venture;

--
-- Name: venturelift_profiles_business_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.venturelift_profiles_business_id_seq OWNED BY public.venturelift_profiles_business.id;


--
-- Name: venturelift_profiles_businesscategory; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.venturelift_profiles_businesscategory (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    added_by_id integer NOT NULL
);


ALTER TABLE public.venturelift_profiles_businesscategory OWNER TO venture;

--
-- Name: venturelift_profiles_businesscategory_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.venturelift_profiles_businesscategory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.venturelift_profiles_businesscategory_id_seq OWNER TO venture;

--
-- Name: venturelift_profiles_businesscategory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.venturelift_profiles_businesscategory_id_seq OWNED BY public.venturelift_profiles_businesscategory.id;


--
-- Name: venturelift_profiles_businessconnectrequest; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.venturelift_profiles_businessconnectrequest (
    id integer NOT NULL,
    created_at timestamp with time zone,
    approval_status character varying(100),
    approved boolean NOT NULL,
    rejected boolean NOT NULL,
    approved_by_id integer,
    business_id integer NOT NULL,
    investor_id integer NOT NULL,
    rejected_by_id integer
);


ALTER TABLE public.venturelift_profiles_businessconnectrequest OWNER TO venture;

--
-- Name: venturelift_profiles_businessconnectrequest_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.venturelift_profiles_businessconnectrequest_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.venturelift_profiles_businessconnectrequest_id_seq OWNER TO venture;

--
-- Name: venturelift_profiles_businessconnectrequest_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.venturelift_profiles_businessconnectrequest_id_seq OWNED BY public.venturelift_profiles_businessconnectrequest.id;


--
-- Name: venturelift_profiles_businessfinancial; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.venturelift_profiles_businessfinancial (
    id integer NOT NULL,
    last_year_revenue integer,
    last_year_profit integer,
    growth_margin integer,
    company_name_id integer NOT NULL
);


ALTER TABLE public.venturelift_profiles_businessfinancial OWNER TO venture;

--
-- Name: venturelift_profiles_businessfinancial_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.venturelift_profiles_businessfinancial_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.venturelift_profiles_businessfinancial_id_seq OWNER TO venture;

--
-- Name: venturelift_profiles_businessfinancial_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.venturelift_profiles_businessfinancial_id_seq OWNED BY public.venturelift_profiles_businessfinancial.id;


--
-- Name: venturelift_profiles_businessgoals; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.venturelift_profiles_businessgoals (
    id integer NOT NULL,
    three_year_targeted_revenue text,
    constraints_to_growth text,
    company_name_id integer NOT NULL
);


ALTER TABLE public.venturelift_profiles_businessgoals OWNER TO venture;

--
-- Name: venturelift_profiles_businessgoals_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.venturelift_profiles_businessgoals_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.venturelift_profiles_businessgoals_id_seq OWNER TO venture;

--
-- Name: venturelift_profiles_businessgoals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.venturelift_profiles_businessgoals_id_seq OWNED BY public.venturelift_profiles_businessgoals.id;


--
-- Name: venturelift_profiles_businessgoals_primary_services_interes3068; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.venturelift_profiles_businessgoals_primary_services_interes3068 (
    id integer NOT NULL,
    businessgoals_id integer NOT NULL,
    vlaservices_id integer NOT NULL
);


ALTER TABLE public.venturelift_profiles_businessgoals_primary_services_interes3068 OWNER TO venture;

--
-- Name: venturelift_profiles_businessgoals_primary_services_inte_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.venturelift_profiles_businessgoals_primary_services_inte_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.venturelift_profiles_businessgoals_primary_services_inte_id_seq OWNER TO venture;

--
-- Name: venturelift_profiles_businessgoals_primary_services_inte_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.venturelift_profiles_businessgoals_primary_services_inte_id_seq OWNED BY public.venturelift_profiles_businessgoals_primary_services_interes3068.id;


--
-- Name: venturelift_profiles_businessgoals_secondary_services_inter2394; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.venturelift_profiles_businessgoals_secondary_services_inter2394 (
    id integer NOT NULL,
    businessgoals_id integer NOT NULL,
    vlaservices_id integer NOT NULL
);


ALTER TABLE public.venturelift_profiles_businessgoals_secondary_services_inter2394 OWNER TO venture;

--
-- Name: venturelift_profiles_businessgoals_secondary_services_in_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.venturelift_profiles_businessgoals_secondary_services_in_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.venturelift_profiles_businessgoals_secondary_services_in_id_seq OWNER TO venture;

--
-- Name: venturelift_profiles_businessgoals_secondary_services_in_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.venturelift_profiles_businessgoals_secondary_services_in_id_seq OWNED BY public.venturelift_profiles_businessgoals_secondary_services_inter2394.id;


--
-- Name: venturelift_profiles_businessinvestment; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.venturelift_profiles_businessinvestment (
    id integer NOT NULL,
    funding_source character varying(200),
    personal_funds_invested integer,
    external_funds_invested integer,
    capital_to_raise integer,
    company_name_id integer NOT NULL
);


ALTER TABLE public.venturelift_profiles_businessinvestment OWNER TO venture;

--
-- Name: venturelift_profiles_businessinvestment_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.venturelift_profiles_businessinvestment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.venturelift_profiles_businessinvestment_id_seq OWNER TO venture;

--
-- Name: venturelift_profiles_businessinvestment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.venturelift_profiles_businessinvestment_id_seq OWNED BY public.venturelift_profiles_businessinvestment.id;


--
-- Name: venturelift_profiles_businessmodel; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.venturelift_profiles_businessmodel (
    id integer NOT NULL,
    business_model text,
    competitors text,
    competitive_advantage text,
    intellectual_property_info text,
    company_name_id integer NOT NULL
);


ALTER TABLE public.venturelift_profiles_businessmodel OWNER TO venture;

--
-- Name: venturelift_profiles_businessmodel_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.venturelift_profiles_businessmodel_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.venturelift_profiles_businessmodel_id_seq OWNER TO venture;

--
-- Name: venturelift_profiles_businessmodel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.venturelift_profiles_businessmodel_id_seq OWNED BY public.venturelift_profiles_businessmodel.id;


--
-- Name: venturelift_profiles_businessteam; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.venturelift_profiles_businessteam (
    id integer NOT NULL,
    founders_info text,
    team_roles_and_structure text,
    board_of_advisors text,
    board_of_directors text,
    company_name_id integer NOT NULL
);


ALTER TABLE public.venturelift_profiles_businessteam OWNER TO venture;

--
-- Name: venturelift_profiles_businessteam_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.venturelift_profiles_businessteam_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.venturelift_profiles_businessteam_id_seq OWNER TO venture;

--
-- Name: venturelift_profiles_businessteam_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.venturelift_profiles_businessteam_id_seq OWNED BY public.venturelift_profiles_businessteam.id;


--
-- Name: venturelift_profiles_investor; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.venturelift_profiles_investor (
    id integer NOT NULL,
    about text,
    thumbnail_image character varying(100),
    phone_number character varying(20) NOT NULL,
    company character varying(250),
    role character varying(250),
    company_location character varying(2),
    physical_address character varying(250),
    company_website character varying(250),
    company_registration_year integer,
    verified boolean NOT NULL,
    user_id integer NOT NULL,
    verified_by_id integer,
    gender character varying(200) NOT NULL,
    sample_profile boolean NOT NULL,
    funder_type character varying(255)
);


ALTER TABLE public.venturelift_profiles_investor OWNER TO venture;

--
-- Name: venturelift_profiles_investor_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.venturelift_profiles_investor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.venturelift_profiles_investor_id_seq OWNER TO venture;

--
-- Name: venturelift_profiles_investor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.venturelift_profiles_investor_id_seq OWNED BY public.venturelift_profiles_investor.id;


--
-- Name: venturelift_profiles_investorconnectrequest; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.venturelift_profiles_investorconnectrequest (
    id integer NOT NULL,
    created_at timestamp with time zone,
    approval_status character varying(100),
    approved boolean NOT NULL,
    rejected boolean NOT NULL,
    approved_by_id integer,
    investor_id integer NOT NULL,
    rejected_by_id integer,
    requestor_id integer NOT NULL
);


ALTER TABLE public.venturelift_profiles_investorconnectrequest OWNER TO venture;

--
-- Name: venturelift_profiles_investorconnectrequest_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.venturelift_profiles_investorconnectrequest_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.venturelift_profiles_investorconnectrequest_id_seq OWNER TO venture;

--
-- Name: venturelift_profiles_investorconnectrequest_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.venturelift_profiles_investorconnectrequest_id_seq OWNED BY public.venturelift_profiles_investorconnectrequest.id;


--
-- Name: venturelift_profiles_investorprofile; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.venturelift_profiles_investorprofile (
    id integer NOT NULL,
    target_countries character varying(250),
    elevator_pitch text,
    managed_funds character varying(100),
    assets_under_management character varying(250),
    investor_portfolio character varying(250),
    exits_executed character varying(250),
    impact_investor character varying(250),
    impact_measurement character varying(250),
    impact_metrics text,
    investor_profile_id integer NOT NULL,
    funder_type character varying(255),
    investment_product character varying(255),
    investment_type character varying(255),
    active_loans integer,
    average_payback character varying(255),
    collateral_list text,
    grant_amount integer,
    grants_list text,
    interest_rate character varying(255),
    loan_approval_process text,
    loan_book character varying(255),
    npl_percentage text,
    prior_donations text,
    reason_for_support text,
    rfp_list text,
    target_recepients text
);


ALTER TABLE public.venturelift_profiles_investorprofile OWNER TO venture;

--
-- Name: venturelift_profiles_investorprofile_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.venturelift_profiles_investorprofile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.venturelift_profiles_investorprofile_id_seq OWNER TO venture;

--
-- Name: venturelift_profiles_investorprofile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.venturelift_profiles_investorprofile_id_seq OWNED BY public.venturelift_profiles_investorprofile.id;


--
-- Name: venturelift_profiles_investorprofile_target_sectors; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.venturelift_profiles_investorprofile_target_sectors (
    id integer NOT NULL,
    investorprofile_id integer NOT NULL,
    businesscategory_id integer NOT NULL
);


ALTER TABLE public.venturelift_profiles_investorprofile_target_sectors OWNER TO venture;

--
-- Name: venturelift_profiles_investorprofile_target_sectors_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.venturelift_profiles_investorprofile_target_sectors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.venturelift_profiles_investorprofile_target_sectors_id_seq OWNER TO venture;

--
-- Name: venturelift_profiles_investorprofile_target_sectors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.venturelift_profiles_investorprofile_target_sectors_id_seq OWNED BY public.venturelift_profiles_investorprofile_target_sectors.id;


--
-- Name: venturelift_profiles_marketdescription; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.venturelift_profiles_marketdescription (
    id integer NOT NULL,
    product_offering text,
    market_segment text,
    needs_fulfilled_by_product text,
    market_size text,
    company_name_id integer NOT NULL
);


ALTER TABLE public.venturelift_profiles_marketdescription OWNER TO venture;

--
-- Name: venturelift_profiles_marketdescription_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.venturelift_profiles_marketdescription_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.venturelift_profiles_marketdescription_id_seq OWNER TO venture;

--
-- Name: venturelift_profiles_marketdescription_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.venturelift_profiles_marketdescription_id_seq OWNED BY public.venturelift_profiles_marketdescription.id;


--
-- Name: venturelift_profiles_post; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.venturelift_profiles_post (
    id integer NOT NULL,
    title character varying(250) NOT NULL,
    body text NOT NULL,
    date timestamp with time zone NOT NULL,
    company_id integer,
    investor_author_id integer,
    supporter_author_id integer,
    file_name character varying(100),
    blog_type character varying(100) NOT NULL
);


ALTER TABLE public.venturelift_profiles_post OWNER TO venture;

--
-- Name: venturelift_profiles_post_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.venturelift_profiles_post_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.venturelift_profiles_post_id_seq OWNER TO venture;

--
-- Name: venturelift_profiles_post_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.venturelift_profiles_post_id_seq OWNED BY public.venturelift_profiles_post.id;


--
-- Name: venturelift_profiles_post_likes; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.venturelift_profiles_post_likes (
    id integer NOT NULL,
    post_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.venturelift_profiles_post_likes OWNER TO venture;

--
-- Name: venturelift_profiles_post_likes_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.venturelift_profiles_post_likes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.venturelift_profiles_post_likes_id_seq OWNER TO venture;

--
-- Name: venturelift_profiles_post_likes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.venturelift_profiles_post_likes_id_seq OWNED BY public.venturelift_profiles_post_likes.id;


--
-- Name: venturelift_profiles_supporter; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.venturelift_profiles_supporter (
    id integer NOT NULL,
    thumbnail_image character varying(100),
    phone_number character varying(20),
    about text,
    company character varying(250),
    role character varying(250),
    company_operations character varying(2),
    company_website character varying(250),
    company_registration_year integer NOT NULL,
    verified boolean NOT NULL,
    user_id integer NOT NULL,
    verified_by_id integer,
    gender character varying(200) NOT NULL,
    sample_profile boolean NOT NULL
);


ALTER TABLE public.venturelift_profiles_supporter OWNER TO venture;

--
-- Name: venturelift_profiles_supporter_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.venturelift_profiles_supporter_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.venturelift_profiles_supporter_id_seq OWNER TO venture;

--
-- Name: venturelift_profiles_supporter_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.venturelift_profiles_supporter_id_seq OWNED BY public.venturelift_profiles_supporter.id;


--
-- Name: venturelift_profiles_supporterconnectrequest; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.venturelift_profiles_supporterconnectrequest (
    id integer NOT NULL,
    created_at timestamp with time zone,
    approval_status character varying(100),
    approved boolean NOT NULL,
    rejected boolean NOT NULL,
    approved_by_id integer,
    rejected_by_id integer,
    requestor_id integer NOT NULL,
    supporter_id integer NOT NULL
);


ALTER TABLE public.venturelift_profiles_supporterconnectrequest OWNER TO venture;

--
-- Name: venturelift_profiles_supporterconnectrequest_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.venturelift_profiles_supporterconnectrequest_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.venturelift_profiles_supporterconnectrequest_id_seq OWNER TO venture;

--
-- Name: venturelift_profiles_supporterconnectrequest_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.venturelift_profiles_supporterconnectrequest_id_seq OWNED BY public.venturelift_profiles_supporterconnectrequest.id;


--
-- Name: venturelift_profiles_supporterprofile; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.venturelift_profiles_supporterprofile (
    id integer NOT NULL,
    supporter_interest character varying(200) NOT NULL,
    interest_startups character varying(50),
    interest_countries character varying(250),
    trading_partners character varying(50),
    supporter_profile_id integer NOT NULL
);


ALTER TABLE public.venturelift_profiles_supporterprofile OWNER TO venture;

--
-- Name: venturelift_profiles_supporterprofile_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.venturelift_profiles_supporterprofile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.venturelift_profiles_supporterprofile_id_seq OWNER TO venture;

--
-- Name: venturelift_profiles_supporterprofile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.venturelift_profiles_supporterprofile_id_seq OWNED BY public.venturelift_profiles_supporterprofile.id;


--
-- Name: venturelift_profiles_supporterprofile_interest_sectors; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.venturelift_profiles_supporterprofile_interest_sectors (
    id integer NOT NULL,
    supporterprofile_id integer NOT NULL,
    businesscategory_id integer NOT NULL
);


ALTER TABLE public.venturelift_profiles_supporterprofile_interest_sectors OWNER TO venture;

--
-- Name: venturelift_profiles_supporterprofile_interest_sectors_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.venturelift_profiles_supporterprofile_interest_sectors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.venturelift_profiles_supporterprofile_interest_sectors_id_seq OWNER TO venture;

--
-- Name: venturelift_profiles_supporterprofile_interest_sectors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.venturelift_profiles_supporterprofile_interest_sectors_id_seq OWNED BY public.venturelift_profiles_supporterprofile_interest_sectors.id;


--
-- Name: venturelift_profiles_surveyuser; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.venturelift_profiles_surveyuser (
    id integer NOT NULL,
    from_time timestamp with time zone NOT NULL,
    to_time timestamp with time zone NOT NULL,
    user_id integer NOT NULL,
    active boolean NOT NULL
);


ALTER TABLE public.venturelift_profiles_surveyuser OWNER TO venture;

--
-- Name: venturelift_profiles_surveyuser_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.venturelift_profiles_surveyuser_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.venturelift_profiles_surveyuser_id_seq OWNER TO venture;

--
-- Name: venturelift_profiles_surveyuser_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.venturelift_profiles_surveyuser_id_seq OWNED BY public.venturelift_profiles_surveyuser.id;


--
-- Name: venturelift_profiles_trackinguser; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.venturelift_profiles_trackinguser (
    id integer NOT NULL,
    access_time timestamp with time zone NOT NULL,
    action_name character varying(255) NOT NULL,
    user_details_id integer NOT NULL
);


ALTER TABLE public.venturelift_profiles_trackinguser OWNER TO venture;

--
-- Name: venturelift_profiles_trackinguser_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.venturelift_profiles_trackinguser_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.venturelift_profiles_trackinguser_id_seq OWNER TO venture;

--
-- Name: venturelift_profiles_trackinguser_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.venturelift_profiles_trackinguser_id_seq OWNED BY public.venturelift_profiles_trackinguser.id;


--
-- Name: venturelift_profiles_vlaservices; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.venturelift_profiles_vlaservices (
    id integer NOT NULL,
    name character varying(250) NOT NULL,
    added_by_id integer NOT NULL
);


ALTER TABLE public.venturelift_profiles_vlaservices OWNER TO venture;

--
-- Name: venturelift_profiles_vlaservices_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.venturelift_profiles_vlaservices_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.venturelift_profiles_vlaservices_id_seq OWNER TO venture;

--
-- Name: venturelift_profiles_vlaservices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.venturelift_profiles_vlaservices_id_seq OWNED BY public.venturelift_profiles_vlaservices.id;


--
-- Name: videomembership_membership; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.videomembership_membership (
    id integer NOT NULL,
    slug character varying(50) NOT NULL,
    membership_type character varying(100) NOT NULL,
    price integer NOT NULL,
    payment_plan character varying(40) NOT NULL,
    type_membership_id integer NOT NULL
);


ALTER TABLE public.videomembership_membership OWNER TO venture;

--
-- Name: videomembership_membership_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.videomembership_membership_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.videomembership_membership_id_seq OWNER TO venture;

--
-- Name: videomembership_membership_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.videomembership_membership_id_seq OWNED BY public.videomembership_membership.id;


--
-- Name: videomembership_membershiptype; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.videomembership_membershiptype (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    number_of_videos integer NOT NULL
);


ALTER TABLE public.videomembership_membershiptype OWNER TO venture;

--
-- Name: videomembership_membershiptype_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.videomembership_membershiptype_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.videomembership_membershiptype_id_seq OWNER TO venture;

--
-- Name: videomembership_membershiptype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.videomembership_membershiptype_id_seq OWNED BY public.videomembership_membershiptype.id;


--
-- Name: videomembership_subscription; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.videomembership_subscription (
    id integer NOT NULL,
    payment_subscription_plan character varying(40) NOT NULL,
    active boolean NOT NULL,
    user_membership_id integer NOT NULL
);


ALTER TABLE public.videomembership_subscription OWNER TO venture;

--
-- Name: videomembership_subscription_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.videomembership_subscription_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.videomembership_subscription_id_seq OWNER TO venture;

--
-- Name: videomembership_subscription_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.videomembership_subscription_id_seq OWNED BY public.videomembership_subscription.id;


--
-- Name: videomembership_usermembership; Type: TABLE; Schema: public; Owner: venture
--

CREATE TABLE public.videomembership_usermembership (
    id integer NOT NULL,
    payment_user_plan character varying(40) NOT NULL,
    membership_id integer,
    user_id integer NOT NULL
);


ALTER TABLE public.videomembership_usermembership OWNER TO venture;

--
-- Name: videomembership_usermembership_id_seq; Type: SEQUENCE; Schema: public; Owner: venture
--

CREATE SEQUENCE public.videomembership_usermembership_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.videomembership_usermembership_id_seq OWNER TO venture;

--
-- Name: videomembership_usermembership_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: venture
--

ALTER SEQUENCE public.videomembership_usermembership_id_seq OWNED BY public.videomembership_usermembership.id;


--
-- Name: actstream_action id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.actstream_action ALTER COLUMN id SET DEFAULT nextval('public.actstream_action_id_seq'::regclass);


--
-- Name: actstream_follow id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.actstream_follow ALTER COLUMN id SET DEFAULT nextval('public.actstream_follow_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: cms_cmsplugin id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_cmsplugin ALTER COLUMN id SET DEFAULT nextval('public.cms_cmsplugin_id_seq'::regclass);


--
-- Name: cms_globalpagepermission id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_globalpagepermission ALTER COLUMN id SET DEFAULT nextval('public.cms_globalpagepermission_id_seq'::regclass);


--
-- Name: cms_globalpagepermission_sites id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_globalpagepermission_sites ALTER COLUMN id SET DEFAULT nextval('public.cms_globalpagepermission_sites_id_seq'::regclass);


--
-- Name: cms_page id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_page ALTER COLUMN id SET DEFAULT nextval('public.cms_page_id_seq'::regclass);


--
-- Name: cms_page_placeholders id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_page_placeholders ALTER COLUMN id SET DEFAULT nextval('public.cms_page_placeholders_id_seq'::regclass);


--
-- Name: cms_pagepermission id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_pagepermission ALTER COLUMN id SET DEFAULT nextval('public.cms_pagepermission_id_seq'::regclass);


--
-- Name: cms_placeholder id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_placeholder ALTER COLUMN id SET DEFAULT nextval('public.cms_placeholder_id_seq'::regclass);


--
-- Name: cms_staticplaceholder id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_staticplaceholder ALTER COLUMN id SET DEFAULT nextval('public.cms_staticplaceholder_id_seq'::regclass);


--
-- Name: cms_title id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_title ALTER COLUMN id SET DEFAULT nextval('public.cms_title_id_seq'::regclass);


--
-- Name: cms_treenode id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_treenode ALTER COLUMN id SET DEFAULT nextval('public.cms_treenode_id_seq'::regclass);


--
-- Name: cms_urlconfrevision id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_urlconfrevision ALTER COLUMN id SET DEFAULT nextval('public.cms_urlconfrevision_id_seq'::regclass);


--
-- Name: cms_usersettings id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_usersettings ALTER COLUMN id SET DEFAULT nextval('public.cms_usersettings_id_seq'::regclass);


--
-- Name: crowdfunding_campaign id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.crowdfunding_campaign ALTER COLUMN id SET DEFAULT nextval('public.crowdfunding_campaign_id_seq'::regclass);


--
-- Name: crowdfunding_campaignconfiguration id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.crowdfunding_campaignconfiguration ALTER COLUMN id SET DEFAULT nextval('public.crowdfunding_campaignconfiguration_id_seq'::regclass);


--
-- Name: crowdfunding_campaigndisbursement id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.crowdfunding_campaigndisbursement ALTER COLUMN id SET DEFAULT nextval('public.crowdfunding_campaigndisbursement_id_seq'::regclass);


--
-- Name: crowdfunding_campaignpayment id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.crowdfunding_campaignpayment ALTER COLUMN id SET DEFAULT nextval('public.crowdfunding_campaignpayment_id_seq'::regclass);


--
-- Name: crowdfunding_campaignreward id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.crowdfunding_campaignreward ALTER COLUMN id SET DEFAULT nextval('public.crowdfunding_campaignreward_id_seq'::regclass);


--
-- Name: crowdfunding_campaignsector id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.crowdfunding_campaignsector ALTER COLUMN id SET DEFAULT nextval('public.crowdfunding_campaignsector_id_seq'::regclass);


--
-- Name: crowdfunding_mpesaapitoken id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.crowdfunding_mpesaapitoken ALTER COLUMN id SET DEFAULT nextval('public.crowdfunding_mpesaapitoken_id_seq'::regclass);


--
-- Name: crowdfunding_mpesac2bnotification id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.crowdfunding_mpesac2bnotification ALTER COLUMN id SET DEFAULT nextval('public.crowdfunding_mpesac2bnotification_id_seq'::regclass);


--
-- Name: crowdfunding_mpesac2bregister id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.crowdfunding_mpesac2bregister ALTER COLUMN id SET DEFAULT nextval('public.crowdfunding_mpesac2bregister_id_seq'::regclass);


--
-- Name: crowdfunding_mpesastkpush id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.crowdfunding_mpesastkpush ALTER COLUMN id SET DEFAULT nextval('public.crowdfunding_mpesastkpush_id_seq'::regclass);


--
-- Name: crowdfunding_mpesastkresponse id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.crowdfunding_mpesastkresponse ALTER COLUMN id SET DEFAULT nextval('public.crowdfunding_mpesastkresponse_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: django_site id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);


--
-- Name: djangocms_snippet_snippet id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.djangocms_snippet_snippet ALTER COLUMN id SET DEFAULT nextval('public.djangocms_snippet_snippet_id_seq'::regclass);


--
-- Name: easy_thumbnails_source id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.easy_thumbnails_source ALTER COLUMN id SET DEFAULT nextval('public.easy_thumbnails_source_id_seq'::regclass);


--
-- Name: easy_thumbnails_thumbnail id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.easy_thumbnails_thumbnail ALTER COLUMN id SET DEFAULT nextval('public.easy_thumbnails_thumbnail_id_seq'::regclass);


--
-- Name: easy_thumbnails_thumbnaildimensions id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions ALTER COLUMN id SET DEFAULT nextval('public.easy_thumbnails_thumbnaildimensions_id_seq'::regclass);


--
-- Name: events_attendees id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.events_attendees ALTER COLUMN id SET DEFAULT nextval('public.events_attendees_id_seq'::regclass);


--
-- Name: events_eventcategory id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.events_eventcategory ALTER COLUMN id SET DEFAULT nextval('public.events_eventcategory_id_seq'::regclass);


--
-- Name: events_events id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.events_events ALTER COLUMN id SET DEFAULT nextval('public.events_events_id_seq'::regclass);


--
-- Name: events_networkevents id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.events_networkevents ALTER COLUMN id SET DEFAULT nextval('public.events_networkevents_id_seq'::regclass);


--
-- Name: filer_clipboard id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.filer_clipboard ALTER COLUMN id SET DEFAULT nextval('public.filer_clipboard_id_seq'::regclass);


--
-- Name: filer_clipboarditem id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.filer_clipboarditem ALTER COLUMN id SET DEFAULT nextval('public.filer_clipboarditem_id_seq'::regclass);


--
-- Name: filer_file id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.filer_file ALTER COLUMN id SET DEFAULT nextval('public.filer_file_id_seq'::regclass);


--
-- Name: filer_folder id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.filer_folder ALTER COLUMN id SET DEFAULT nextval('public.filer_folder_id_seq'::regclass);


--
-- Name: filer_folderpermission id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.filer_folderpermission ALTER COLUMN id SET DEFAULT nextval('public.filer_folderpermission_id_seq'::regclass);


--
-- Name: filer_thumbnailoption id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.filer_thumbnailoption ALTER COLUMN id SET DEFAULT nextval('public.filer_thumbnailoption_id_seq'::regclass);


--
-- Name: jet_bookmark id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.jet_bookmark ALTER COLUMN id SET DEFAULT nextval('public.jet_bookmark_id_seq'::regclass);


--
-- Name: jet_pinnedapplication id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.jet_pinnedapplication ALTER COLUMN id SET DEFAULT nextval('public.jet_pinnedapplication_id_seq'::regclass);


--
-- Name: knowledge_center_audiovisual id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.knowledge_center_audiovisual ALTER COLUMN id SET DEFAULT nextval('public.knowledge_center_audiovisual_id_seq'::regclass);


--
-- Name: knowledge_center_documentcategory id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.knowledge_center_documentcategory ALTER COLUMN id SET DEFAULT nextval('public.knowledge_center_documentcategory_id_seq'::regclass);


--
-- Name: knowledge_center_subdocumentcategory id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.knowledge_center_subdocumentcategory ALTER COLUMN id SET DEFAULT nextval('public.knowledge_center_subdocumentcategory_id_seq'::regclass);


--
-- Name: knowledge_center_textcenter id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.knowledge_center_textcenter ALTER COLUMN id SET DEFAULT nextval('public.knowledge_center_textcenter_id_seq'::regclass);


--
-- Name: knowledge_center_videocategory id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.knowledge_center_videocategory ALTER COLUMN id SET DEFAULT nextval('public.knowledge_center_videocategory_id_seq'::regclass);


--
-- Name: menus_cachekey id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.menus_cachekey ALTER COLUMN id SET DEFAULT nextval('public.menus_cachekey_id_seq'::regclass);


--
-- Name: social_auth_association id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.social_auth_association ALTER COLUMN id SET DEFAULT nextval('public.social_auth_association_id_seq'::regclass);


--
-- Name: social_auth_code id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.social_auth_code ALTER COLUMN id SET DEFAULT nextval('public.social_auth_code_id_seq'::regclass);


--
-- Name: social_auth_nonce id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.social_auth_nonce ALTER COLUMN id SET DEFAULT nextval('public.social_auth_nonce_id_seq'::regclass);


--
-- Name: social_auth_partial id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.social_auth_partial ALTER COLUMN id SET DEFAULT nextval('public.social_auth_partial_id_seq'::regclass);


--
-- Name: social_auth_usersocialauth id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.social_auth_usersocialauth ALTER COLUMN id SET DEFAULT nextval('public.social_auth_usersocialauth_id_seq'::regclass);


--
-- Name: venturelift_media_audiovisual id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_media_audiovisual ALTER COLUMN id SET DEFAULT nextval('public.venturelift_media_audiovisual_id_seq'::regclass);


--
-- Name: venturelift_media_category id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_media_category ALTER COLUMN id SET DEFAULT nextval('public.venturelift_media_category_id_seq'::regclass);


--
-- Name: venturelift_media_newsletter id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_media_newsletter ALTER COLUMN id SET DEFAULT nextval('public.venturelift_media_newsletter_id_seq'::regclass);


--
-- Name: venturelift_media_subscription id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_media_subscription ALTER COLUMN id SET DEFAULT nextval('public.venturelift_media_subscription_id_seq'::regclass);


--
-- Name: venturelift_media_textmedia id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_media_textmedia ALTER COLUMN id SET DEFAULT nextval('public.venturelift_media_textmedia_id_seq'::regclass);


--
-- Name: venturelift_profiles_allsystemuser id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_allsystemuser ALTER COLUMN id SET DEFAULT nextval('public.venturelift_profiles_allsystemuser_id_seq'::regclass);


--
-- Name: venturelift_profiles_business id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_business ALTER COLUMN id SET DEFAULT nextval('public.venturelift_profiles_business_id_seq'::regclass);


--
-- Name: venturelift_profiles_businesscategory id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_businesscategory ALTER COLUMN id SET DEFAULT nextval('public.venturelift_profiles_businesscategory_id_seq'::regclass);


--
-- Name: venturelift_profiles_businessconnectrequest id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_businessconnectrequest ALTER COLUMN id SET DEFAULT nextval('public.venturelift_profiles_businessconnectrequest_id_seq'::regclass);


--
-- Name: venturelift_profiles_businessfinancial id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_businessfinancial ALTER COLUMN id SET DEFAULT nextval('public.venturelift_profiles_businessfinancial_id_seq'::regclass);


--
-- Name: venturelift_profiles_businessgoals id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_businessgoals ALTER COLUMN id SET DEFAULT nextval('public.venturelift_profiles_businessgoals_id_seq'::regclass);


--
-- Name: venturelift_profiles_businessgoals_primary_services_interes3068 id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_businessgoals_primary_services_interes3068 ALTER COLUMN id SET DEFAULT nextval('public.venturelift_profiles_businessgoals_primary_services_inte_id_seq'::regclass);


--
-- Name: venturelift_profiles_businessgoals_secondary_services_inter2394 id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_businessgoals_secondary_services_inter2394 ALTER COLUMN id SET DEFAULT nextval('public.venturelift_profiles_businessgoals_secondary_services_in_id_seq'::regclass);


--
-- Name: venturelift_profiles_businessinvestment id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_businessinvestment ALTER COLUMN id SET DEFAULT nextval('public.venturelift_profiles_businessinvestment_id_seq'::regclass);


--
-- Name: venturelift_profiles_businessmodel id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_businessmodel ALTER COLUMN id SET DEFAULT nextval('public.venturelift_profiles_businessmodel_id_seq'::regclass);


--
-- Name: venturelift_profiles_businessteam id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_businessteam ALTER COLUMN id SET DEFAULT nextval('public.venturelift_profiles_businessteam_id_seq'::regclass);


--
-- Name: venturelift_profiles_investor id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_investor ALTER COLUMN id SET DEFAULT nextval('public.venturelift_profiles_investor_id_seq'::regclass);


--
-- Name: venturelift_profiles_investorconnectrequest id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_investorconnectrequest ALTER COLUMN id SET DEFAULT nextval('public.venturelift_profiles_investorconnectrequest_id_seq'::regclass);


--
-- Name: venturelift_profiles_investorprofile id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_investorprofile ALTER COLUMN id SET DEFAULT nextval('public.venturelift_profiles_investorprofile_id_seq'::regclass);


--
-- Name: venturelift_profiles_investorprofile_target_sectors id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_investorprofile_target_sectors ALTER COLUMN id SET DEFAULT nextval('public.venturelift_profiles_investorprofile_target_sectors_id_seq'::regclass);


--
-- Name: venturelift_profiles_marketdescription id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_marketdescription ALTER COLUMN id SET DEFAULT nextval('public.venturelift_profiles_marketdescription_id_seq'::regclass);


--
-- Name: venturelift_profiles_post id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_post ALTER COLUMN id SET DEFAULT nextval('public.venturelift_profiles_post_id_seq'::regclass);


--
-- Name: venturelift_profiles_post_likes id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_post_likes ALTER COLUMN id SET DEFAULT nextval('public.venturelift_profiles_post_likes_id_seq'::regclass);


--
-- Name: venturelift_profiles_supporter id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_supporter ALTER COLUMN id SET DEFAULT nextval('public.venturelift_profiles_supporter_id_seq'::regclass);


--
-- Name: venturelift_profiles_supporterconnectrequest id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_supporterconnectrequest ALTER COLUMN id SET DEFAULT nextval('public.venturelift_profiles_supporterconnectrequest_id_seq'::regclass);


--
-- Name: venturelift_profiles_supporterprofile id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_supporterprofile ALTER COLUMN id SET DEFAULT nextval('public.venturelift_profiles_supporterprofile_id_seq'::regclass);


--
-- Name: venturelift_profiles_supporterprofile_interest_sectors id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_supporterprofile_interest_sectors ALTER COLUMN id SET DEFAULT nextval('public.venturelift_profiles_supporterprofile_interest_sectors_id_seq'::regclass);


--
-- Name: venturelift_profiles_surveyuser id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_surveyuser ALTER COLUMN id SET DEFAULT nextval('public.venturelift_profiles_surveyuser_id_seq'::regclass);


--
-- Name: venturelift_profiles_trackinguser id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_trackinguser ALTER COLUMN id SET DEFAULT nextval('public.venturelift_profiles_trackinguser_id_seq'::regclass);


--
-- Name: venturelift_profiles_vlaservices id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_vlaservices ALTER COLUMN id SET DEFAULT nextval('public.venturelift_profiles_vlaservices_id_seq'::regclass);


--
-- Name: videomembership_membership id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.videomembership_membership ALTER COLUMN id SET DEFAULT nextval('public.videomembership_membership_id_seq'::regclass);


--
-- Name: videomembership_membershiptype id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.videomembership_membershiptype ALTER COLUMN id SET DEFAULT nextval('public.videomembership_membershiptype_id_seq'::regclass);


--
-- Name: videomembership_subscription id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.videomembership_subscription ALTER COLUMN id SET DEFAULT nextval('public.videomembership_subscription_id_seq'::regclass);


--
-- Name: videomembership_usermembership id; Type: DEFAULT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.videomembership_usermembership ALTER COLUMN id SET DEFAULT nextval('public.videomembership_usermembership_id_seq'::regclass);


--
-- Data for Name: actstream_action; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.actstream_action (id, actor_object_id, verb, description, target_object_id, action_object_object_id, "timestamp", public, action_object_content_type_id, actor_content_type_id, target_content_type_id) FROM stdin;
1	4	started following	\N	1	\N	2019-06-13 13:46:11.023609+03	t	\N	7	66
2	4	started following	\N	1	\N	2019-06-13 13:50:18.165066+03	t	\N	7	66
3	4	started following	\N	1	\N	2019-06-13 13:55:20.511014+03	t	\N	7	66
4	4	started following	\N	1	\N	2019-06-14 17:08:10.488617+03	t	\N	7	66
5	2	started following	\N	1	\N	2019-06-19 00:30:55.028948+03	t	\N	7	66
6	2	started following	\N	1	\N	2019-06-19 02:14:29.530816+03	t	\N	7	66
7	4	started following	\N	1	\N	2019-06-19 02:29:41.266949+03	t	\N	7	66
8	2	started following	\N	1	\N	2019-06-25 14:35:04.737847+03	t	\N	7	66
9	2	started following	\N	1	\N	2019-07-01 12:17:04.516108+03	t	\N	7	66
10	2	started following	\N	1	\N	2019-07-01 12:52:49.790812+03	t	\N	7	66
11	2	started following	\N	5	\N	2019-07-01 12:54:04.632164+03	t	\N	7	75
\.


--
-- Data for Name: actstream_follow; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.actstream_follow (id, object_id, actor_only, started, content_type_id, user_id, flag) FROM stdin;
10	1	t	2019-07-01 12:52:49.785485+03	66	2	
11	5	t	2019-07-01 12:54:04.63011+03	75	2	
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can use Structure mode	1	use_structure
2	Can change page	2	change_page
3	Can add pinned application	3	add_pinnedapplication
4	Can change pinned application	3	change_pinnedapplication
5	Can delete pinned application	3	delete_pinnedapplication
6	Can add bookmark	4	add_bookmark
7	Can change bookmark	4	change_bookmark
8	Can delete bookmark	4	delete_bookmark
9	Can add group	5	add_group
10	Can change group	5	change_group
11	Can delete group	5	delete_group
12	Can add permission	6	add_permission
13	Can change permission	6	change_permission
14	Can delete permission	6	delete_permission
15	Can add user	7	add_user
16	Can change user	7	change_user
17	Can delete user	7	delete_user
18	Can add content type	8	add_contenttype
19	Can change content type	8	change_contenttype
20	Can delete content type	8	delete_contenttype
21	Can add session	9	add_session
22	Can change session	9	change_session
23	Can delete session	9	delete_session
24	Can add log entry	10	add_logentry
25	Can change log entry	10	change_logentry
26	Can delete log entry	10	delete_logentry
27	Can add site	11	add_site
28	Can change site	11	change_site
29	Can delete site	11	delete_site
30	Can add placeholder	1	add_placeholder
31	Can change placeholder	1	change_placeholder
32	Can delete placeholder	1	delete_placeholder
33	Can add urlconf revision	12	add_urlconfrevision
34	Can change urlconf revision	12	change_urlconfrevision
35	Can delete urlconf revision	12	delete_urlconfrevision
36	Can add page	2	add_page
37	Can delete page	2	delete_page
38	Can view page	2	view_page
39	Can publish page	2	publish_page
40	Can edit static placeholders	2	edit_static_placeholder
41	Can add cms plugin	13	add_cmsplugin
42	Can change cms plugin	13	change_cmsplugin
43	Can delete cms plugin	13	delete_cmsplugin
44	Can add User group (page)	14	add_pageusergroup
45	Can change User group (page)	14	change_pageusergroup
46	Can delete User group (page)	14	delete_pageusergroup
47	Can add static placeholder	15	add_staticplaceholder
48	Can change static placeholder	15	change_staticplaceholder
49	Can delete static placeholder	15	delete_staticplaceholder
50	Can add Page permission	16	add_pagepermission
51	Can change Page permission	16	change_pagepermission
52	Can delete Page permission	16	delete_pagepermission
53	Can add title	17	add_title
54	Can change title	17	change_title
55	Can delete title	17	delete_title
56	Can add user setting	18	add_usersettings
57	Can change user setting	18	change_usersettings
58	Can delete user setting	18	delete_usersettings
59	Can add Page global permission	19	add_globalpagepermission
60	Can change Page global permission	19	change_globalpagepermission
61	Can delete Page global permission	19	delete_globalpagepermission
62	Can add placeholder reference	21	add_placeholderreference
63	Can change placeholder reference	21	change_placeholderreference
64	Can delete placeholder reference	21	delete_placeholderreference
65	Can add User (page)	22	add_pageuser
66	Can change User (page)	22	change_pageuser
67	Can delete User (page)	22	delete_pageuser
68	Can add alias plugin model	23	add_aliaspluginmodel
69	Can change alias plugin model	23	change_aliaspluginmodel
70	Can delete alias plugin model	23	delete_aliaspluginmodel
71	Can add cache key	25	add_cachekey
72	Can change cache key	25	change_cachekey
73	Can delete cache key	25	delete_cachekey
74	Can add text	26	add_text
75	Can change text	26	change_text
76	Can delete text	26	delete_text
77	Can add file	27	add_file
78	Can change file	27	change_file
79	Can delete file	27	delete_file
80	Can add Folder	28	add_folder
81	Can change Folder	28	change_folder
82	Can delete Folder	28	delete_folder
83	Can use directory listing	28	can_use_directory_listing
84	Can add thumbnail option	29	add_thumbnailoption
85	Can change thumbnail option	29	change_thumbnailoption
86	Can delete thumbnail option	29	delete_thumbnailoption
87	Can add clipboard item	30	add_clipboarditem
88	Can change clipboard item	30	change_clipboarditem
89	Can delete clipboard item	30	delete_clipboarditem
90	Can add clipboard	31	add_clipboard
91	Can change clipboard	31	change_clipboard
92	Can delete clipboard	31	delete_clipboard
93	Can add folder permission	32	add_folderpermission
94	Can change folder permission	32	change_folderpermission
95	Can delete folder permission	32	delete_folderpermission
96	Can add image	33	add_image
97	Can change image	33	change_image
98	Can delete image	33	delete_image
99	Can add source	34	add_source
100	Can change source	34	change_source
101	Can delete source	34	delete_source
102	Can add thumbnail	35	add_thumbnail
103	Can change thumbnail	35	change_thumbnail
104	Can delete thumbnail	35	delete_thumbnail
105	Can add thumbnail dimensions	36	add_thumbnaildimensions
106	Can change thumbnail dimensions	36	change_thumbnaildimensions
107	Can delete thumbnail dimensions	36	delete_thumbnaildimensions
108	Can add multi columns	37	add_multicolumns
109	Can change multi columns	37	change_multicolumns
110	Can delete multi columns	37	delete_multicolumns
111	Can add column	38	add_column
112	Can change column	38	change_column
113	Can delete column	38	delete_column
114	Can add file	39	add_file
115	Can change file	39	change_file
116	Can delete file	39	delete_file
117	Can add folder	40	add_folder
118	Can change folder	40	change_folder
119	Can delete folder	40	delete_folder
120	Can add link	41	add_link
121	Can change link	41	change_link
122	Can delete link	41	delete_link
123	Can add picture	42	add_picture
124	Can change picture	42	change_picture
125	Can delete picture	42	delete_picture
126	Can add style	43	add_style
127	Can change style	43	change_style
128	Can delete style	43	delete_style
129	Can add Snippet	44	add_snippet
130	Can change Snippet	44	change_snippet
131	Can delete Snippet	44	delete_snippet
132	Can add Snippet Ptr	45	add_snippetptr
133	Can change Snippet Ptr	45	change_snippetptr
134	Can delete Snippet Ptr	45	delete_snippetptr
135	Can add google map route	46	add_googlemaproute
136	Can change google map route	46	change_googlemaproute
137	Can delete google map route	46	delete_googlemaproute
138	Can add google map	47	add_googlemap
139	Can change google map	47	change_googlemap
140	Can delete google map	47	delete_googlemap
141	Can add google map marker	48	add_googlemapmarker
142	Can change google map marker	48	change_googlemapmarker
143	Can delete google map marker	48	delete_googlemapmarker
144	Can add video player	49	add_videoplayer
145	Can change video player	49	change_videoplayer
146	Can delete video player	49	delete_videoplayer
147	Can add video source	50	add_videosource
148	Can change video source	50	change_videosource
149	Can delete video source	50	delete_videosource
150	Can add video track	51	add_videotrack
151	Can change video track	51	change_videotrack
152	Can delete video track	51	delete_videotrack
153	Can add association	52	add_association
154	Can change association	52	change_association
155	Can delete association	52	delete_association
156	Can add nonce	53	add_nonce
157	Can change nonce	53	change_nonce
158	Can delete nonce	53	delete_nonce
159	Can add code	54	add_code
160	Can change code	54	change_code
161	Can delete code	54	delete_code
162	Can add user social auth	55	add_usersocialauth
163	Can change user social auth	55	change_usersocialauth
164	Can delete user social auth	55	delete_usersocialauth
165	Can add partial	56	add_partial
166	Can change partial	56	change_partial
167	Can delete partial	56	delete_partial
168	Can add action	57	add_action
169	Can change action	57	change_action
170	Can delete action	57	delete_action
171	Can add follow	58	add_follow
172	Can change follow	58	change_follow
173	Can delete follow	58	delete_follow
174	Can add Media category	59	add_category
175	Can change Media category	59	change_category
176	Can delete Media category	59	delete_category
177	Can add Media article	60	add_textmedia
178	Can change Media article	60	change_textmedia
179	Can delete Media article	60	delete_textmedia
180	Can add Audio/visual media	61	add_audiovisual
181	Can change Audio/visual media	61	change_audiovisual
182	Can delete Audio/visual media	61	delete_audiovisual
183	Can add Newsletter subscriber	62	add_subscription
184	Can change Newsletter subscriber	62	change_subscription
185	Can delete Newsletter subscriber	62	delete_subscription
186	Can add newsletter	63	add_newsletter
187	Can change newsletter	63	change_newsletter
188	Can delete newsletter	63	delete_newsletter
189	Can add business category	64	add_businesscategory
190	Can change business category	64	change_businesscategory
191	Can delete business category	64	delete_businesscategory
192	Can add vla services	65	add_vlaservices
193	Can change vla services	65	change_vlaservices
194	Can delete vla services	65	delete_vlaservices
195	Can add business	66	add_business
196	Can change business	66	change_business
197	Can delete business	66	delete_business
198	Can add Business Market Description	67	add_marketdescription
199	Can change Business Market Description	67	change_marketdescription
200	Can delete Business Market Description	67	delete_marketdescription
201	Can add Business Model	68	add_businessmodel
202	Can change Business Model	68	change_businessmodel
203	Can delete Business Model	68	delete_businessmodel
204	Can add Business Team	69	add_businessteam
205	Can change Business Team	69	change_businessteam
206	Can delete Business Team	69	delete_businessteam
207	Can add Business Financials	70	add_businessfinancial
208	Can change Business Financials	70	change_businessfinancial
209	Can delete Business Financials	70	delete_businessfinancial
210	Can add Business Investment	71	add_businessinvestment
211	Can change Business Investment	71	change_businessinvestment
212	Can delete Business Investment	71	delete_businessinvestment
213	Can add Business Goal	72	add_businessgoals
214	Can change Business Goal	72	change_businessgoals
215	Can delete Business Goal	72	delete_businessgoals
216	Can add supporter	73	add_supporter
217	Can change supporter	73	change_supporter
218	Can delete supporter	73	delete_supporter
219	Can add Supporter Profile	74	add_supporterprofile
220	Can change Supporter Profile	74	change_supporterprofile
221	Can delete Supporter Profile	74	delete_supporterprofile
222	Can add investor	75	add_investor
223	Can change investor	75	change_investor
224	Can delete investor	75	delete_investor
225	Can add Investor Profile	76	add_investorprofile
226	Can change Investor Profile	76	change_investorprofile
227	Can delete Investor Profile	76	delete_investorprofile
228	Can add Business Updates	77	add_post
229	Can change Business Updates	77	change_post
230	Can delete Business Updates	77	delete_post
231	Can add campaign payment	78	add_campaignpayment
232	Can change campaign payment	78	change_campaignpayment
233	Can delete campaign payment	78	delete_campaignpayment
234	Can add campaign sector	79	add_campaignsector
235	Can change campaign sector	79	change_campaignsector
236	Can delete campaign sector	79	delete_campaignsector
237	Can add campaign approval	80	add_campaignapproval
238	Can change campaign approval	80	change_campaignapproval
239	Can delete campaign approval	80	delete_campaignapproval
240	Can add campaign disbursement	81	add_campaigndisbursement
241	Can change campaign disbursement	81	change_campaigndisbursement
242	Can delete campaign disbursement	81	delete_campaigndisbursement
243	Can add campaign	82	add_campaign
244	Can change campaign	82	change_campaign
245	Can delete campaign	82	delete_campaign
246	Can add campaign configuration	83	add_campaignconfiguration
247	Can change campaign configuration	83	change_campaignconfiguration
248	Can delete campaign configuration	83	delete_campaignconfiguration
249	Can add Document Category	84	add_documentcategory
250	Can change Document Category	84	change_documentcategory
251	Can delete Document Category	84	delete_documentcategory
252	Can add Video Category	85	add_videocategory
253	Can change Video Category	85	change_videocategory
254	Can delete Video Category	85	delete_videocategory
255	Can add Document / Report Manager	86	add_textcenter
256	Can change Document / Report Manager	86	change_textcenter
257	Can delete Document / Report Manager	86	delete_textcenter
258	Can add Video Content Manager	87	add_audiovisual
259	Can change Video Content Manager	87	change_audiovisual
260	Can delete Video Content Manager	87	delete_audiovisual
261	Can add Event Category	88	add_eventcategory
262	Can change Event Category	88	change_eventcategory
263	Can delete Event Category	88	delete_eventcategory
264	Can add Event Manager	89	add_events
265	Can change Event Manager	89	change_events
266	Can delete Event Manager	89	delete_events
267	Can add business connect request	90	add_businessconnectrequest
268	Can change business connect request	90	change_businessconnectrequest
269	Can delete business connect request	90	delete_businessconnectrequest
270	Can add Network Events Manager	91	add_networkevents
271	Can change Network Events Manager	91	change_networkevents
272	Can delete Network Events Manager	91	delete_networkevents
273	Can add Event Attendees	92	add_attendees
274	Can change Event Attendees	92	change_attendees
275	Can delete Event Attendees	92	delete_attendees
276	Can add campaign reward	93	add_campaignreward
277	Can change campaign reward	93	change_campaignreward
278	Can delete campaign reward	93	delete_campaignreward
279	Can add tracking user	94	add_trackinguser
280	Can change tracking user	94	change_trackinguser
281	Can delete tracking user	94	delete_trackinguser
282	Can add membership	95	add_membership
283	Can change membership	95	change_membership
284	Can delete membership	95	delete_membership
285	Can add user membership	96	add_usermembership
286	Can change user membership	96	change_usermembership
287	Can delete user membership	96	delete_usermembership
288	Can add subscription	97	add_subscription
289	Can change subscription	97	change_subscription
290	Can delete subscription	97	delete_subscription
291	Can add all system user	98	add_allsystemuser
292	Can change all system user	98	change_allsystemuser
293	Can delete all system user	98	delete_allsystemuser
294	Can add Document Sub Category	99	add_subdocumentcategory
295	Can change Document Sub Category	99	change_subdocumentcategory
296	Can delete Document Sub Category	99	delete_subdocumentcategory
297	Can add connect request	100	add_connectrequest
298	Can change connect request	100	change_connectrequest
299	Can delete connect request	100	delete_connectrequest
300	Can add supporter connect request	101	add_supporterconnectrequest
301	Can change supporter connect request	101	change_supporterconnectrequest
302	Can delete supporter connect request	101	delete_supporterconnectrequest
303	Can add investor connect request	102	add_investorconnectrequest
304	Can change investor connect request	102	change_investorconnectrequest
305	Can delete investor connect request	102	delete_investorconnectrequest
306	Can add mpesa api token	103	add_mpesaapitoken
307	Can change mpesa api token	103	change_mpesaapitoken
308	Can delete mpesa api token	103	delete_mpesaapitoken
309	Can add mpesa stk push	104	add_mpesastkpush
310	Can change mpesa stk push	104	change_mpesastkpush
311	Can delete mpesa stk push	104	delete_mpesastkpush
312	Can add mpesa c2b register	105	add_mpesac2bregister
313	Can change mpesa c2b register	105	change_mpesac2bregister
314	Can delete mpesa c2b register	105	delete_mpesac2bregister
315	Can add mpesa c2b notification	106	add_mpesac2bnotification
316	Can change mpesa c2b notification	106	change_mpesac2bnotification
317	Can delete mpesa c2b notification	106	delete_mpesac2bnotification
318	Can add mpesa stk response	107	add_mpesastkresponse
319	Can change mpesa stk response	107	change_mpesastkresponse
320	Can delete mpesa stk response	107	delete_mpesastkresponse
321	Can add membership type	108	add_membershiptype
322	Can change membership type	108	change_membershiptype
323	Can delete membership type	108	delete_membershiptype
324	Can add survey user	109	add_surveyuser
325	Can change survey user	109	change_surveyuser
326	Can delete survey user	109	delete_surveyuser
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
14	pbkdf2_sha256$36000$Mh6qVB4kzJVC$NVUxzr0w+m8seeKpsxiDhvlzrCBselzMF5ikPA1d2Zc=	2019-06-28 17:58:12.823789+03	f	tryfiana20	Tryfiana	Wachira	tryfiana@gmail.com	f	t	2019-06-28 17:25:35.893003+03
1	pbkdf2_sha256$36000$piA4GuZR9KzN$/T7LCG4cwV7kQvxHxG4z94ofme6qJBbVIhjssbknG6k=	2019-06-25 14:30:48.902032+03	f	tryfiana010			tryfiana01@gmail.com	f	t	2019-06-06 16:35:58.048437+03
15	pbkdf2_sha256$36000$u0ct84mPJN6A$2uVzZplEcwt6MfrNoOOl0HNLRLBFw6h7Q1y0AioPPuI=	2019-07-01 10:50:01.548894+03	f	funder01	Tryfiana	Wachira	tryfiana@gmail.com	f	t	2019-07-01 09:38:36.232853+03
16	pbkdf2_sha256$36000$NYNeZAbQoWJD$bsA1VhLp8xquOaj/YPuz7eWE1s2Hs60+a0cuYdCVdms=	2019-07-29 23:32:39.430829+03	f	tryfiana40			tryfiana@gmail.com	f	t	2019-07-25 13:43:55.216792+03
13	pbkdf2_sha256$36000$Ec78QVD96mJc$KOT3OpUAk3xo756JcKhEMi5II9bx9NCj780J+JjT7/M=	2019-08-19 16:54:50.704131+03	f	tryfiana11	Tryfiana	Wachira	tryfiana@gmail.com	f	t	2019-06-27 16:50:29.003381+03
8	pbkdf2_sha256$36000$XsrxVYa04pfA$/W+k2pxr1QYqnXlhNLkBm6GL3nBCKTVpyyrwJ2R+6EA=	2019-06-27 16:36:12.659988+03	f	tryfiana04	Tryfiana	Wachira	tryfiana@gmail.com	f	t	2019-06-24 13:28:26.473387+03
12	pbkdf2_sha256$36000$xMjKCDpqFgjD$U6gF0hxNSSUmM+Wu57IUZV5g4JXh9iZJ/3H1yxpzI90=	2019-06-27 16:50:05.622197+03	f	tryfiana10	Tryfiana	Wachira	tryfiana@gmail.com	f	t	2019-06-25 09:58:28.468901+03
17	pbkdf2_sha256$36000$WF8Rn0wpwz5o$ZKIZfCeHlTnIcz3DE0PqCy1YHVrZMq/z3cctDeFQGY4=	2019-09-01 12:04:54.524994+03	f	grantor01	Fiona	Wachira	tryfiana@gmail.com	f	t	2019-09-01 12:04:10.765655+03
19	pbkdf2_sha256$36000$kDAP8B86sRz4$HaEoixOYIBDNcIysUCILMpUg73C7N+NE3Xr8mLcKL4c=	\N	f	partner02			tryfiana@gmail.com	f	f	2019-09-01 13:40:44.208545+03
20	pbkdf2_sha256$36000$fRUo9nxXFtcz$1yFaAzS03qUu+de6EFykNKlxAgCXcgMge4J9UZxymsU=	\N	f	tryfiana50			tryfiana@gmail.com	f	f	2019-09-19 11:25:30.920658+03
7	pbkdf2_sha256$36000$Yy44O4hvUfhI$xese5FHV1VCk2lbNzQP9vaEGSG96JAHQxFWhM+EBRPE=	2019-10-25 13:11:27.037904+03	f	tryfiana03			tryfiana@gmail.com	f	t	2019-06-24 12:09:46.235235+03
24	pbkdf2_sha256$36000$qsDTRlbWWvEs$MYZZjCRxMNHBMQpJlWb8q17ghnMJRlI8347W4UMFm+o=	2019-11-26 17:10:23.004316+03	f	funderB	Funder	Investor	tryfiana@gmail.com	f	t	2019-11-26 17:08:51.445335+03
25	pbkdf2_sha256$36000$LwbV3S5UwbjB$Ny3krtJBZeygs1QCVr6DI9v3Z7WvA3faYUFztDAl2lI=	2019-11-26 17:15:51.029296+03	f	funderC	Funder	Lender	tryfiana@gmail.com	f	t	2019-11-26 17:15:15.679523+03
18	pbkdf2_sha256$36000$Vbj3Mq8Gk9Wu$p28i685cPF2RaefTx351ArbSU3U4taUxKIGuigzB+a4=	2019-10-25 15:06:11.658771+03	f	partner01	Fiona	Wang	tryfiana@gmail.com	f	t	2019-09-01 12:13:21.986933+03
21	pbkdf2_sha256$36000$ZuG46HUFs7MB$EInQ5pFN8sIEwVTOqdCEirF9fjf1cpAFHvUKmImlW+k=	\N	f	tryfiana123			tryfiana@gmail.com	f	f	2019-10-31 11:34:05.021547+03
22	pbkdf2_sha256$36000$ihzhm0fPlmn0$P3G3WYLPfhxFSf6Izb5c3dOIz3Hh3ARKVWxZsql5CkY=	\N	f	tryfiana937			tryfiana@gmail.com	f	f	2019-10-31 11:35:34.276301+03
26	pbkdf2_sha256$36000$AbJlxXrgHN7x$DN9axV0Xe/t/iwztmtJmz9QZCcJjU7RwscSHJIkcWhA=	2019-11-26 17:21:17.713454+03	f	funderD	Funder	Grantor	tryfiana@gmail.com	f	t	2019-11-26 17:19:25.914801+03
2	pbkdf2_sha256$36000$piA4GuZR9KzN$/T7LCG4cwV7kQvxHxG4z94ofme6qJBbVIhjssbknG6k=	2020-03-30 20:41:10.362351+03	f	tryfiana01	Tryfiana	Wachira		f	t	2019-06-06 16:43:59.482698+03
23	pbkdf2_sha256$36000$wgSUhQRvS23T$S1gyB5M4yTV3adaE1ccV3OefWRF+zdnV3G/REeVK46k=	2019-11-26 14:45:14.219203+03	f	funderA	Test	Funder	tryfiana@gmail.com	f	t	2019-11-26 14:43:55.553398+03
3	pbkdf2_sha256$36000$BSre2Tpa09qD$rVYunQ6tf9FXcxK1b5Wxiikwh8xy19sRUkVm4qdGCKE=	2020-03-30 20:50:16.350661+03	t	admin			wachirafiona@gmail.com	t	t	2019-06-06 17:01:28.46761+03
4	pbkdf2_sha256$36000$L1Rz7Nr68pHC$tgrIRNoNowkfdt++cRPk9cQ8vkFZ608Qye42Uypj1eo=	2020-03-30 20:55:09.67255+03	f	tryfiana02	Tryfiana	Wachira	bronsky031@gmail.com	f	t	2019-06-10 09:37:24.023834+03
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: cms_aliaspluginmodel; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.cms_aliaspluginmodel (cmsplugin_ptr_id, plugin_id, alias_placeholder_id) FROM stdin;
\.


--
-- Data for Name: cms_cmsplugin; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.cms_cmsplugin (id, "position", language, plugin_type, creation_date, changed_date, parent_id, placeholder_id, depth, numchild, path) FROM stdin;
1	0	en	SnippetPlugin	2019-07-25 16:09:09.567303+03	2019-07-25 16:09:09.574509+03	\N	6	1	0	0001
2	0	en	SnippetPlugin	2019-07-25 17:39:53.908912+03	2019-07-25 17:39:53.916491+03	\N	4	1	0	0002
\.


--
-- Data for Name: cms_globalpagepermission; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.cms_globalpagepermission (id, can_change, can_add, can_delete, can_change_advanced_settings, can_publish, can_change_permissions, can_move_page, can_view, can_recover_page, group_id, user_id) FROM stdin;
\.


--
-- Data for Name: cms_globalpagepermission_sites; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.cms_globalpagepermission_sites (id, globalpagepermission_id, site_id) FROM stdin;
\.


--
-- Data for Name: cms_page; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.cms_page (id, created_by, changed_by, creation_date, changed_date, publication_date, publication_end_date, in_navigation, soft_root, reverse_id, navigation_extenders, template, login_required, limit_visibility_in_menu, is_home, application_urls, application_namespace, publisher_is_draft, languages, xframe_options, publisher_public_id, is_page_type, node_id) FROM stdin;
2	admin	admin	2019-07-25 15:59:20.238541+03	2019-07-25 15:59:20.255411+03	2019-07-25 15:59:20.238259+03	\N	t	f	\N	\N	INHERIT	f	\N	t	\N	\N	f	en	0	1	f	1
1	admin	admin	2019-07-25 15:59:20.213531+03	2019-07-25 15:59:20.264638+03	2019-07-25 15:59:20.238259+03	\N	t	f	\N	\N	INHERIT	f	\N	t	\N	\N	t	en	0	2	f	1
3	admin	admin	2019-07-25 16:07:30.238715+03	2019-07-25 16:07:30.260227+03	\N	\N	t	f	\N	\N	INHERIT	f	\N	f	\N	\N	t	en	0	\N	f	2
5	admin	admin	2019-07-26 12:08:06.311201+03	2019-07-26 12:08:06.311226+03	2019-07-26 12:08:06.310801+03	\N	t	f	\N	\N	INHERIT	f	\N	f	HomeApphook	venturelift_media_diaspora	f	en	0	4	f	3
4	admin	admin	2019-07-26 11:32:50.077929+03	2019-07-26 12:08:59.145468+03	2019-07-26 12:08:06.310801+03	\N	t	f	\N	\N	index.html	f	\N	f	HomeApphook	venturelift_media_diaspora	t	en	0	5	f	3
7	admin	admin	2019-07-26 12:17:28.990742+03	2019-07-26 12:17:28.990785+03	2019-07-26 12:17:28.98995+03	\N	t	f	\N	\N	INHERIT	f	\N	f	HomeApphook	venturelift_media_investment	f	en	0	6	f	4
6	admin	admin	2019-07-26 12:17:21.961437+03	2019-07-26 12:18:21.158505+03	2019-07-26 12:17:28.98995+03	\N	t	f	\N	\N	index.html	f	\N	f	HomeApphook	venturelift_media_investment	t	en	0	7	f	4
9	admin	admin	2019-07-26 12:43:41.866796+03	2019-07-26 12:43:41.866813+03	2019-07-26 12:43:41.866549+03	\N	t	f	\N	\N	categories.html	f	\N	f	HomeApphook	venturelift_media_trade	f	en	0	8	f	5
8	admin	admin	2019-07-26 12:43:03.170586+03	2019-07-26 12:43:37.880198+03	2019-07-26 12:43:41.866549+03	\N	t	f	\N	\N	categories.html	f	\N	f	HomeApphook	venturelift_media_trade	t	en	0	9	f	5
\.


--
-- Data for Name: cms_page_placeholders; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.cms_page_placeholders (id, page_id, placeholder_id) FROM stdin;
1	1	4
2	2	5
3	3	6
4	4	7
5	5	8
6	6	9
7	7	10
8	8	11
9	9	12
\.


--
-- Data for Name: cms_pagepermission; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.cms_pagepermission (id, can_change, can_add, can_delete, can_change_advanced_settings, can_publish, can_change_permissions, can_move_page, can_view, grant_on, group_id, page_id, user_id) FROM stdin;
\.


--
-- Data for Name: cms_pageuser; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.cms_pageuser (user_ptr_id, created_by_id) FROM stdin;
4	2
7	2
8	7
12	3
13	12
14	2
15	4
\.


--
-- Data for Name: cms_pageusergroup; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.cms_pageusergroup (group_ptr_id, created_by_id) FROM stdin;
\.


--
-- Data for Name: cms_placeholder; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.cms_placeholder (id, slot, default_width) FROM stdin;
1	footer	\N
2	footer	\N
3	clipboard	\N
4	Introductory Video	\N
5	Introductory Video	\N
6	Introductory Video	\N
7	Introductory Video	\N
8	Introductory Video	\N
9	Introductory Video	\N
10	Introductory Video	\N
11	Introductory Video	\N
12	Introductory Video	\N
\.


--
-- Data for Name: cms_placeholderreference; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.cms_placeholderreference (cmsplugin_ptr_id, name, placeholder_ref_id) FROM stdin;
\.


--
-- Data for Name: cms_staticplaceholder; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.cms_staticplaceholder (id, name, code, dirty, creation_method, draft_id, public_id, site_id) FROM stdin;
1		footer	f	template	1	2	\N
\.


--
-- Data for Name: cms_title; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.cms_title (id, language, title, page_title, menu_title, meta_description, slug, path, has_url_overwrite, redirect, creation_date, published, publisher_is_draft, publisher_state, page_id, publisher_public_id) FROM stdin;
2	en	Home				home		f	\N	2019-07-25 15:59:20.21522+03	t	f	0	2	1
3	en	Culture	Culture	Culture		culture	culture	f	\N	2019-07-25 16:07:30.239656+03	f	t	1	3	\N
1	en	Home				home		f	\N	2019-07-25 15:59:20.21522+03	t	t	1	1	2
5	en	Diaspora				diaspora	diaspora	f	\N	2019-07-26 11:32:50.080842+03	t	f	0	5	4
4	en	Diaspora				diaspora	diaspora	f	\N	2019-07-26 11:32:50.080842+03	t	t	1	4	5
7	en	Investment				investment	investment	f	\N	2019-07-26 12:17:21.962651+03	t	f	0	7	6
6	en	Investment				investment	investment	f	\N	2019-07-26 12:17:21.962651+03	t	t	1	6	7
9	en	Trade				trade	trade	f	\N	2019-07-26 12:43:03.17155+03	t	f	0	9	8
8	en	Trade				trade	trade	f	\N	2019-07-26 12:43:03.17155+03	t	t	0	8	9
\.


--
-- Data for Name: cms_treenode; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.cms_treenode (id, path, depth, numchild, parent_id, site_id) FROM stdin;
1	0001	1	0	\N	1
2	0002	1	0	\N	1
3	0003	1	0	\N	1
4	0004	1	0	\N	1
5	0005	1	0	\N	1
\.


--
-- Data for Name: cms_urlconfrevision; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.cms_urlconfrevision (id, revision) FROM stdin;
1	4f084ba2-9d65-4594-9dbd-d5ef6f8bbf61
\.


--
-- Data for Name: cms_usersettings; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.cms_usersettings (id, language, clipboard_id, user_id) FROM stdin;
1	en	3	3
\.


--
-- Data for Name: crowdfunding_campaign; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.crowdfunding_campaign (id, campaign_name, created_at, company_name, company_email, duration, target_amount, total_funds_received, campaign_status, campaign_image, short_description, long_description, funds_disbursement_status, campaign_owner_id, sector_id, approved, approved_by_id, comments, rejected, rejected_by_id, approval_status, campaign_reward_details, campaign_reward_threshold, campaign_type, minimum_donation) FROM stdin;
3	waterfalls	2019-06-10 00:37:06.879611+03	Waterfalls	bronsky031@gmail.com	2019-10-04	1200000.00	0.00	OPENED	pic_folder/image7.jpeg	nv j bh bh v vy v u y v y	vy t hf vyv yu vgyu  g y gby b u b	PENDING	2	2	f	\N		f	\N	PENDING	\N	\N	\N	1.00
4	Earth	2019-06-10 00:39:41.495184+03	Earth Inc	bronsky031@gmail.com	2019-08-24	120000.00	0.00	OPENED	pic_folder/image5.jpeg	h u h hb hkb hb jb  h h hb h jh v v hu	yy yg gy y   gy gy ug yu g yg gyg y gyu	PENDING	2	2	f	\N		f	\N	PENDING	\N	\N	\N	1.00
7	Cabo	2019-06-10 12:49:56.082123+03	Cabo	tryfiana@gmail.com	2019-08-08	200000.00	0.00	OPENED	pic_folder/cabbage_a7UqFtR.jpg	u yu by vg y  btf by gb fb tf  yvf f	bt ft uf ty f tbfytf byf f nt f ty f nyf t yhn fy f t fb tbfy	PENDING	2	2	f	\N		f	\N	PENDING	\N	\N	\N	1.00
8	Cabo2	2019-06-10 13:23:50.733509+03	Cabo	tryfiana@gmail.com	2019-06-21	200000.00	0.00	OPENED	pic_folder/cabbage_RHa0Spu.jpg	h gv yf ty tyf y gy gby ftyf gyb f  dty f yuj bu	ty tv ygb y f ytf t ybf n tfvt f f tyf yt bfyh bgt hny hnf yb	PENDING	2	2	f	\N		f	\N	PENDING	\N	\N	\N	1.00
9	Cabo2	2019-06-10 13:25:15.013508+03	Cabo	tryfiana@gmail.com	2019-06-21	200000.00	0.00	OPENED	pic_folder/cabbage_sZud3uM.jpg	h gv yf ty tyf y gy gby ftyf gyb f  dty f yuj bu	ty tv ygb y f ytf t ybf n tfvt f f tyf yt bfyh bgt hny hnf yb	PENDING	2	2	f	\N		f	\N	PENDING	\N	\N	\N	1.00
10	h	2019-06-10 13:25:50.156019+03	h	tryfiana@gmail.com	2019-06-29	23000.00	0.00	OPENED	pic_folder/company-logo_OBPtDXU.png	jhgyi fvv vb  hvy	hb hb  nj nj j j jn m  b hg hh h h	PENDING	2	2	f	\N		f	\N	PENDING	\N	\N	\N	1.00
12	j	2019-06-10 13:33:08.442357+03	j	tryfiana@gmail.com	2019-06-28	20300.00	0.00	OPENED	pic_folder/image6.jpeg	uhg yu fv rbtyc bryfrfr bfn r rc  rtc br	y btrcnrt cvyt nf tb ryf y r dt v r n yb	PENDING	2	2	f	\N		f	\N	PENDING	\N	\N	\N	1.00
13	ll	2019-06-10 13:45:42.861671+03	ll	tryfiana@gmail.com	2019-08-17	20000.00	0.00	OPENED	pic_folder/image6_fDTHmdd.jpeg	jgc cc  f fv  v v   f v vv	e fe fdfdf fe f f f dfd  df e  w ew  rr er e	PENDING	2	2	f	\N		f	\N	PENDING	\N	\N	\N	1.00
14	world	2019-06-10 13:48:16.406932+03	world	tryfiana@gmail.com	2019-07-26	23.00	0.00	OPENED	pic_folder/image5_bc3pgP1.jpeg	ug fcurgghth th hgh guic  55h 5uhg h	rgk g t th t vgt  rg c 5 5 hv th er tt htgr g	PENDING	2	2	f	\N		f	\N	PENDING	\N	\N	\N	1.00
1	Agriculture Cabbage Growth	2019-06-09 18:04:04.003489+03	AFREK	tryfiana@gmail.com	2019-06-10	100000.00	0.00	CLOSED	pic_folder/cabbage.jpg	To Grow more cabbages in kenya	To Grow more cabbages in kenya and have more to eat	PENDING	2	2	t	3	ok	f	\N	APPROVE	\N	\N	\N	1.00
5	Earth	2019-06-10 00:39:43.536534+03	Earth Inc	bronsky031@gmail.com	2019-06-09	120000.00	0.00	CLOSED	pic_folder/image5_IKLrX1g.jpeg	h u h hb hkb hb jb  h h hb h jh v v hu	yy yg gy y   gy gy ug yu g yg gyg y gyu	PENDING	2	2	t	3		f	\N	APPROVE	\N	\N	\N	1.00
17	Earth2	2019-06-11 10:40:18.001291+03	Earth Inc2	tryfiana@gmail.com	2019-08-24	12000.00	0.00	OPENED	pic_folder/image7_JapZdTW.jpeg	agric is good and good for the stomach	agric is good and good for the stomach agric is good and good for the stomach agric is good and good for the stomach	PENDING	2	3	f	\N		f	\N	PENDING	\N	\N	\N	1.00
19	err	2019-06-12 11:59:18.096396+03	era	tryfiana@gmail.com	2019-07-27	12000.00	0.00	OPENED	pic_folder/image7_Qbe965v.jpeg	kjfvn gr dtghyhyhjryj yjyhjr j j f jy y	uihn yu byugb yn  u	PENDING	2	2	f	\N		f	\N	PENDING	\N	\N	\N	1.00
23	hgvv	2019-06-24 13:31:33.751034+03	bbu	tryfiana@gmail.com	2019-06-28	10000.00	0.00	OPENED	pic_folder/pexels-photo-248797_6TOo8kZ.jpeg	hjg ug  b b b  h h  jh h d	c ce ce ce ce c c  c ce ce ce  ce ce	PENDING	2	2	f	\N		f	\N	PENDING	ed ef ef ef ff e fe fe	100.00	REWARD BASED	1.00
24	t	2019-06-24 13:50:44.69901+03	t	tryfiana@gmail.com	2019-06-29	10000.00	0.00	OPENED	pic_folder/image5_s7r6RUb.jpeg	t t t t t	t t t t t t  t t t	PENDING	2	2	f	\N		f	\N	PENDING		\N	NON-REWARD BASED	1.00
16	wtyu	2019-06-10 13:58:51.373054+03	wtyu	tryfiana@gmail.com	2019-06-19	2000.00	0.00	CLOSED	pic_folder/image7_xWiTqyn.jpeg	fv  fr r cfrc rc rc rf rf fe ef	e ff   g b fb fg b  fgf  fbf gs   f dfg g f gf g sd	PENDING	2	2	f	\N	not wanted	t	3	REJECT	\N	\N	\N	1.00
15	wetr	2019-06-10 13:54:02.867719+03	wter	tryfiana@gmail.com	2019-06-19	21.00	0.00	CLOSED	pic_folder/image7_R5CFTpm.jpeg	fe  vf vf e ed ed w w ed ed  e f  r r rg g g	e  jh b j b g u gby g  ug ubn u nu yg b	PENDING	2	2	t	3	t t gt ggt  g  rr rrt h gth	f	\N	APPROVE	\N	\N	\N	1.00
25	e w	2019-06-24 13:51:18.33051+03	n	tryfiana@gmail.com	2019-06-28	1200.00	0.00	OPENED	pic_folder/pexels-photo-248797_YSppL3c.jpeg	n b b b b	c  c c c c c	PENDING	2	2	f	\N		f	\N	PENDING		\N	NON-REWARD BASED	1.00
26	r	2019-06-24 13:52:06.381751+03	w	tryfiana@gmail.com	2019-06-28	1200.00	0.00	OPENED	pic_folder/pexels-photo-248797_d5zGkGB.jpeg	e	w	PENDING	2	2	f	\N		f	\N	PENDING	ess	10.00	REWARD BASED	1.00
21	jvghv	2019-06-18 13:49:58.540953+03	hvyhcj	tryfiana@gmail.com	2019-07-04	12000.00	0.00	CLOSED	pic_folder/image7_7MqlsJh.jpeg	jkb y  bg bg bb b b b g  g bgy hn h yh t ht ht hy hty	g rth thty ytj ty ty  th ty h tyh ty h yth tyh  ht hy hr	PENDING	2	2	t	3	ok	f	\N	APPROVE	rreg rt gt  th th 5e  g  rg  g erg re	100.00	REWARD BASED	1.00
6	Beach Reserve	2019-06-10 11:07:47.027168+03	Coastal Eques	tryfiana@gmail.com	2019-08-24	200000.00	3.00	CLOSED	pic_folder/pexels-photo-248797.jpeg	hjg d hd d vd v vf v v fd f v vfd	n ub gb yb g b u bh u b uin  g yb  uh y hb  by j	PENDING	2	2	t	3	Your idea is good make people aware about it to strat receiving funds	f	\N	APPROVE	\N	\N	\N	1.00
22	Earth6	2019-06-19 00:26:11.043159+03	Earth Inc6	tryfiana@gmail.com	2019-07-06	12000.00	0.00	CLOSED	pic_folder/image5_Ni94ZMq.jpeg	f g gg g gg g gg g	r f f g gg g f f f ff d	PENDING	2	2	t	3	ok	f	\N	APPROVE	f g g g h h hh h t	100.00	REWARD BASED	1.00
18	Earth3	2019-06-11 10:44:55.941658+03	Earth Inc3	tryfiana@gmail.com	2019-08-23	12000.00	5.00	CLOSED	pic_folder/image5_DN3omSk.jpeg	agr df f e reg rg g  g g  gfr gfg	gr gr gfgf  g rt t th  gg hg  dgt h t h t	PENDING	2	3	t	3	f rg g g g g g rg gr r	f	\N	APPROVE	\N	\N	\N	1.00
11	w	2019-06-10 13:31:09.847812+03	w	tryfiana@gmail.com	2019-08-24	200000.00	3.00	CLOSED	pic_folder/image7_qJHn3WF.jpeg	v nf v v vf vf v fv  vf vf fv fv fv	hu hu ug ug g u ug g ug u u ug ug ug ug ug ug	PENDING	2	2	t	3	good nothing	f	\N	APPROVE	\N	\N	\N	1.00
20	Earth Preserve	2019-06-12 13:33:55.669067+03	Earth InCo	tryfiana@gmail.com	2019-08-17	12000.00	14.00	CLOSED	pic_folder/image6_JR0ugS4.jpeg	erah is good	erah is good erah is good erah is good erah is good	PENDING	2	3	t	3	good	f	\N	APPROVE	\N	\N	\N	1.00
2	wa	2019-06-10 00:33:03.927349+03	jhv	bronsky031@gmail.com	2019-09-28	1200000.00	2.00	OPENED	pic_folder/image8.jpeg	jbhjv h  yg yg y	hy ygy y y y yy ugy y	PENDING	2	2	f	\N		f	\N	PENDING	\N	\N	\N	1.00
\.


--
-- Data for Name: crowdfunding_campaignconfiguration; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.crowdfunding_campaignconfiguration (id, name, transaction_fee_type, transaction_fee, processing_fee_type, processing_fee, added_by_id) FROM stdin;
1	Configurations	Flat	100.00	Percentage	5.00	3
\.


--
-- Data for Name: crowdfunding_campaigndisbursement; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.crowdfunding_campaigndisbursement (id, amount, disbursement_type, disbursement_method, disbursement_status, approved, rejected, disbursement_order_number, disbursed, approved_by_id, campaign_id, recipient_id, rejected_by_id, created_at, recipient_email, approval_status, campaign_target, campaign_duration) FROM stdin;
1	0.00	REFUND	\N	PENDING	f	f	\N	f	\N	1	2	\N	2019-06-11 10:00:00.131176+03	tryfiana@gmail.com	PENDING	\N	2019-06-18
2	0.00	REFUND	\N	PENDING	f	f	\N	f	\N	5	2	\N	2019-06-11 10:00:00.157244+03	bronsky031@gmail.com	PENDING	\N	2019-06-18
3	0.00	REFUND	\N	PENDING	f	f	\N	f	\N	16	2	\N	2019-06-19 00:40:00.089197+03	tryfiana@gmail.com	PENDING	\N	2019-06-19
4	0.00	REFUND	\N	PENDING	f	f	\N	f	\N	15	2	\N	2019-06-19 00:40:00.116264+03	tryfiana@gmail.com	PENDING	\N	2019-06-19
5	0.00	REFUND	\N	PENDING	f	f	\N	f	\N	21	2	\N	2019-07-04 00:09:57.187063+03	tryfiana@gmail.com	PENDING	12000.00	\N
6	0.00	REFUND	\N	PENDING	f	f	\N	f	\N	22	2	\N	2019-07-07 00:12:05.821551+03	tryfiana@gmail.com	PENDING	12000.00	\N
7	14.00	REFUND	\N	PENDING	f	f	\N	f	\N	20	2	\N	2019-08-17 19:39:17.831271+03	tryfiana@gmail.com	PENDING	12000.00	\N
8	5.00	REFUND	\N	PENDING	f	f	\N	f	\N	18	2	\N	2019-08-23 10:30:14.741754+03	tryfiana@gmail.com	PENDING	12000.00	\N
9	3.00	REFUND	\N	PENDING	f	f	\N	f	\N	11	2	\N	2019-08-24 14:27:53.118747+03	tryfiana@gmail.com	PENDING	200000.00	\N
10	3.00	REFUND	\N	PENDING	f	f	\N	f	\N	6	2	\N	2019-08-24 14:27:53.145045+03	tryfiana@gmail.com	PENDING	200000.00	\N
\.


--
-- Data for Name: crowdfunding_campaignpayment; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.crowdfunding_campaignpayment (id, amount, payment_method, payment_status, payment_order_number, paid, campaign_id, donator_id, comments, created_at, allow_visibility, donator_email, donator_phoneno, payment_payer_id) FROM stdin;
1	1000.00	mpesa	INITIATED	\N	f	5	4	ok	2019-06-11 09:41:26.083916+03	f	\N	\N	\N
2	1200.00	paypal	INITIATED	\N	f	18	4	me	2019-06-11 10:59:42.50333+03	f	\N	\N	\N
3	120.00	mpesa	INITIATED	\N	f	6	4	im paying 120 KES	2019-06-12 14:12:39.056462+03	f	\N	\N	\N
4	120.00	mpesa	INITIATED	\N	f	21	4	r r r r ef fe fe	2019-06-18 14:05:51.506148+03	t	\N	\N	\N
5	120.00	paypal	INITIATED	\N	f	22	4	r f g  g g g g  g	2019-06-19 00:27:33.311008+03	t	\N	\N	\N
6	100.00	mpesa	INITIATED	\N	f	18	\N	ok	2019-06-25 05:43:04.150135+03	t	tryfiana@gmail.com	\N	\N
7	10.00	paypal	INITIATED	\N	f	6	\N	ti	2019-06-25 10:28:17.524824+03	t	tryfiana@gmail.com		\N
8	1.00	paypal	INITIATED	\N	f	21	4	i	2019-06-25 10:28:56.537761+03	t	bronsky031@gmail.com		\N
9	1.00	mpesa	INITIATED	\N	f	21	4	tt	2019-06-25 10:29:07.948432+03	t	bronsky031@gmail.com	254711836370	\N
10	10.00	mpesa	INITIATED	\N	f	11	\N	r	2019-06-25 15:57:00.763398+03	t	tryfiana@gmail.com	254711836370	\N
11	10.00	mpesa	INITIATED	\N	f	6	\N	e	2019-06-25 16:01:43.33215+03	t	tryfiana@gmail.com	254711836370	\N
12	12.00	mpesa	INITIATED	\N	f	11	\N	e	2019-06-25 16:09:50.966+03	t	tryfiana@gmail.com	254711836370	\N
13	10.00	mpesa	INITIATED	\N	f	18	\N	wer	2019-06-25 17:37:25.357761+03	t	tryfiana@gmail.com	254711836370	\N
14	10.00	mpesa	INITIATED	\N	f	18	\N	h	2019-06-25 17:41:24.436628+03	t	tryfiana@gmail.com	254711836370	\N
15	1.00	mpesa	INITIATED	\N	f	6	\N	f	2019-06-25 17:45:11.879919+03	t	tryfiana@gmail.com	254711836370	\N
16	1.00	mpesa	INITIATED	\N	f	6	\N	ee	2019-06-25 17:48:39.087455+03	t	tryfiana@gmail.com	254711836370	\N
17	1.00	mpesa	INITIATED	\N	f	18	\N	e	2019-06-25 17:49:53.488562+03	t	tryfiana@gmail.com	254711836370	\N
18	90.00	mpesa	INITIATED	\N	f	11	\N	g	2019-06-25 17:53:01.338936+03	t	tryfiana@gmail.com	254711836370	\N
19	1.00	paypal	PAID	8UD24600Y0838833R	t	22	\N	g	2019-07-05 15:58:31.487355+03	t	tryfiana@gmail.com		J8QFKU87YE2KJ
20	1.00	paypal	PAID	4PM184547T787720E	t	20	\N	f	2019-07-05 16:02:33.030158+03	t	tryfiana@gmail.com		J8QFKU87YE2KJ
21	10.00	mpesa	INITIATED	\N	f	20	\N	me	2019-07-10 12:35:46.47398+03	t	tryfiana@gmail.com	254711836370	\N
22	10.00	mpesa	INITIATED	\N	f	20	\N	me	2019-07-10 12:41:06.949773+03	t	tryfiana@gmail.com	254711836370	\N
23	10.00	paypal	PAID	0DD35865UK008113T	t	20	\N	me	2019-07-10 13:43:31.972061+03	t	tryfiana@gmail.com		J8QFKU87YE2KJ
24	1.00	mpesa	INITIATED	\N	f	20	\N	er	2019-07-10 14:38:21.516362+03	t	tryfiana@gmail.com	0711836370	\N
25	1.00	mpesa	INITIATED	\N	f	20	\N	me	2019-07-10 14:46:30.284789+03	t	tryfiana@gmail.com	0711836370	\N
26	1.00	mpesa	INITIATED	\N	f	20	\N	09	2019-07-10 14:48:17.221373+03	t	tryfiana@gmail.com	711836370	\N
27	1.00	mpesa	INITIATED	\N	f	20	\N	me	2019-07-10 14:50:03.261929+03	t	tryfiana@gmail.com	711836370	\N
28	1.00	mpesa	INITIATED	\N	f	20	\N	me	2019-07-10 14:52:37.566751+03	t	tryfiana@gmail.com	0711836370	\N
29	10.00	mpesa	INITIATED	\N	f	20	\N	me	2019-07-10 14:54:07.714783+03	t	tryfiana@gmail.com	254711836370	\N
30	1.00	mpesa	INITIATED	\N	f	20	\N	me	2019-07-10 14:59:07.41677+03	t	tryfiana@gmail.com	0711836370	\N
31	1.00	mpesa	INITIATED	\N	f	20	\N	me	2019-07-10 15:04:48.313933+03	t	tryfiana@gmail.com	711836370	\N
32	1.00	mpesa	INITIATED	\N	f	20	\N	me	2019-07-10 15:07:28.488551+03	t	tryfiana@gmail.com	0711836370	\N
33	1.00	mpesa	INITIATED	\N	f	20	\N	me	2019-07-10 15:14:51.948468+03	t	tryfiana@gmail.com	711836370	\N
34	1.00	mpesa	INITIATED	\N	f	20	\N	me	2019-07-10 15:17:51.497075+03	t	tryfiana@gmail.com	254711836370	\N
35	1.00	mpesa	PAID	\N	t	20	\N	me	2019-07-10 15:47:26.457796+03	t	tryfiana@gmail.com	0711836370	\N
36	1.00	mpesa	PAID	\N	t	20	\N	me1	2019-07-10 15:56:41.457641+03	t	tryfiana@gmail.com	711836370	\N
37	1.00	mpesa	INITIATED	\N	f	18	\N	me1	2019-07-10 16:00:14.921392+03	t	tryfiana@gmail.com	254711836370	\N
38	1.00	mpesa	PAID	\N	t	18	\N	me	2019-07-10 16:03:59.911274+03	t	tryfiana@gmail.com	254711836370	\N
39	1.00	mpesa	PAID	\N	t	11	\N	me	2019-07-10 16:05:07.096061+03	t	tryfiana@gmail.com	711836370	\N
40	1.00	mpesa	INITIATED	\N	f	6	\N	me	2019-07-10 16:07:48.640117+03	t	tryfiana@gmail.com	254711836370	\N
41	1.00	mpesa	INITIATED	\N	f	6	\N	me	2019-07-10 16:10:04.745966+03	t	tryfiana@gmail.com	254711836370	\N
42	1.00	mpesa	INITIATED	\N	f	6	\N	me	2019-07-10 16:11:42.832152+03	t	tryfiana@gmail.com	254711836370	\N
43	1.00	mpesa	PAID	\N	t	6	\N	me	2019-07-10 16:14:36.029003+03	t	tryfiana@gmail.com	254711836370	\N
44	1.00	mpesa	PAID	\N	t	18	\N	w	2019-07-10 16:18:21.774449+03	t	tryfiana@gmail.com	254711836370	\N
45	1.00	mpesa	INITIATED	\N	f	20	\N	me	2019-07-10 16:21:14.777074+03	t	tryfiana@gmail.com	254711836370	\N
46	1.00	mpesa	INITIATED	\N	f	20	\N	me	2019-07-10 16:23:04.169826+03	t	tryfiana@gmail.com	254711836370	\N
47	1.00	paypal	PAID	8NL44649R06275350	t	18	\N	me	2019-07-10 16:47:51.281315+03	t	tryfiana@gmail.com		J8QFKU87YE2KJ
48	1.00	paypal	PAID	2M031021B8504115U	t	11	\N	me	2019-07-10 17:31:23.161572+03	t	tryfiana@gmail.com		J8QFKU87YE2KJ
49	1.00	paypal	PAID	22U66513UP996894M	t	20	\N	me	2019-07-10 17:33:18.274027+03	t	tryfiana@gmail.com		J8QFKU87YE2KJ
50	1.00	paypal	PAID	72A9818622512131P	t	2	\N	me	2019-07-10 18:08:37.338933+03	t	tryfiana@gmail.com		J8QFKU87YE2KJ
51	1.00	paypal	PAID	72A9818622512131P	t	2	\N	me	2019-07-10 18:10:43.986907+03	t	tryfiana@gmail.com		J8QFKU87YE2KJ
52	1.00	paypal	PAID	4VT42690BK808033R	t	6	\N	me	2019-07-10 18:37:19.023503+03	t	tryfiana@gmail.com		J8QFKU87YE2KJ
\.


--
-- Data for Name: crowdfunding_campaignreward; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.crowdfunding_campaignreward (id, created_at, reward, reward_status, comments, campaign_id, payment_id, rewarded_user_id, rewarded_user_email) FROM stdin;
1	2019-06-18 14:05:51.510461+03	rreg rt gt  th th 5e  g  rg  g erg re	DELIVERED	ok	21	4	4	\N
2	2019-06-19 00:27:33.315011+03	f g g g h h hh h t	DELIVERED	ok	22	5	4	\N
3	2019-06-25 10:28:56.542338+03	rreg rt gt  th th 5e  g  rg  g erg re	PENDING	\N	21	8	4	bronsky031@gmail.com
4	2019-06-25 10:29:07.951443+03	rreg rt gt  th th 5e  g  rg  g erg re	PENDING	\N	21	9	4	bronsky031@gmail.com
\.


--
-- Data for Name: crowdfunding_campaignsector; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.crowdfunding_campaignsector (id, name, added_by_id) FROM stdin;
2	Software Technology	3
3	Agriculture	3
\.


--
-- Data for Name: crowdfunding_mpesaapitoken; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.crowdfunding_mpesaapitoken (id, token, created_at, status) FROM stdin;
1	WkwdRwzlmvAGkr8g40zvwYYVmium	2019-07-10 12:41:07.796742+03	INACTIVE
2	TWQxMNGmiPlKgtt2CDG8XVTiGzSe	2019-07-10 14:46:31.024779+03	INACTIVE
3	PM4UQbi8tWoQRzqRPWgD8D7kIM1Z	2019-07-10 15:47:31.131359+03	ACTIVE
\.


--
-- Data for Name: crowdfunding_mpesac2bnotification; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.crowdfunding_mpesac2bnotification (id, created_at, account_name, amount_received, phone_number, reference_code, shortcode, payment_id) FROM stdin;
1	2019-07-10 15:48:01.077617+03	ANNONYMUS35	1.0	254711836370	NGA36NJV9F	174379	35
2	2019-07-10 15:56:58.752448+03	ANNONYMUS36	1.0	254711836370	NGA26NT9MI	174379	36
3	2019-07-10 16:04:18.059402+03	ANNONYMUS38	1.0	254711836370	NGA16O10VT	174379	38
4	2019-07-10 16:05:26.186146+03	ANNONYMUS39	1.0	254711836370	NGA26O28WU	174379	39
5	2019-07-10 16:15:05.134877+03	ANNONYMUS43	1.0	254711836370	NGA76OCOYR	174379	43
6	2019-07-10 16:18:37.434993+03	ANNONYMUS44	1.0	254711836370	NGA56OGIB5	174379	44
\.


--
-- Data for Name: crowdfunding_mpesac2bregister; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.crowdfunding_mpesac2bregister (id, name, created_at, request_json, response_json, response_code) FROM stdin;
\.


--
-- Data for Name: crowdfunding_mpesastkpush; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.crowdfunding_mpesastkpush (id, name, created_at, request_json, response_json, response_code, payment_id, "checkoutID") FROM stdin;
1	ANONYMUS20	2019-07-10 12:41:10.663003+03	{"BusinessShortCode": "174379", "AccountReference": "ANONYMUS20", "TransactionDesc": "VENTURELIFTDONATION", "PartyB": "174379", "Amount": "10", "PartyA": "254711836370", "PhoneNumber": "254711836370", "TransactionType": "CustomerPayBillOnline", "Timestamp": "20190710124107", "Password": "MTc0Mzc5YmZiMjc5ZjlhYTliZGJjZjE1OGU5N2RkNzFhNDY3Y2QyZTBjODkzMDU5YjEwZjc4ZTZiNzJhZGExZWQyYzkxOTIwMTkwNzEwMTI0MTA3", "CallBackURL": "http://52.37.84.193:8081/crowdfunding/mpesa_checkout_response"}	{\n            "MerchantRequestID":"17816-9317236-1",\n            "CheckoutRequestID":"ws_CO_DMZ_386507394_10072019124109843",\n            "ResponseCode": "0",\n            "ResponseDescription":"Success. Request accepted for processing",\n            "CustomerMessage":"Success. Request accepted for processing"\n        }\n        	200	\N	\N
2	0BB5E257-15AF-414C-A11A-5F3C6A5B9E6F	2019-07-10 14:46:36.682913+03	{"BusinessShortCode": "174379", "AccountReference": "0BB5E257-15AF-414C-A11A-5F3C6A5B9E6F", "TransactionDesc": "VENTURELIFTDONATION", "PartyB": "174379", "Amount": "1", "PartyA": "254711836370", "PhoneNumber": "0711836370", "TransactionType": "CustomerPayBillOnline", "Timestamp": "20190710144630", "Password": "MTc0Mzc5YmZiMjc5ZjlhYTliZGJjZjE1OGU5N2RkNzFhNDY3Y2QyZTBjODkzMDU5YjEwZjc4ZTZiNzJhZGExZWQyYzkxOTIwMTkwNzEwMTQ0NjMw", "CallBackURL": "http://2ec1852e.ngrok.io/crowdfunding/mpesa_checkout_response"}	{\n                    "requestId":"10303-9564262-1",\n                    "errorCode": "400.002.02",\n                    "errorMessage": "Bad Request - Invalid PhoneNumber"\n                }\n            	400	25	\N
3	E93DEBE2-37EC-4F73-AFB2-C311C7E5F543	2019-07-10 14:48:23.281263+03	{"BusinessShortCode": "174379", "AccountReference": "E93DEBE2-37EC-4F73-AFB2-C311C7E5F543", "TransactionDesc": "VENTURELIFTDONATION", "PartyB": "174379", "Amount": "1", "PartyA": "254711836370", "PhoneNumber": "711836370", "TransactionType": "CustomerPayBillOnline", "Timestamp": "20190710144817", "Password": "MTc0Mzc5YmZiMjc5ZjlhYTliZGJjZjE1OGU5N2RkNzFhNDY3Y2QyZTBjODkzMDU5YjEwZjc4ZTZiNzJhZGExZWQyYzkxOTIwMTkwNzEwMTQ0ODE3", "CallBackURL": "http://2ec1852e.ngrok.io/crowdfunding/mpesa_checkout_response"}	{\n                    "requestId":"17816-9394201-1",\n                    "errorCode": "400.002.02",\n                    "errorMessage": "Bad Request - Invalid PhoneNumber"\n                }\n            	400	26	\N
4	3489FD36-8312-4FB1-B733-095875D74253	2019-07-10 14:50:09.061484+03	{"BusinessShortCode": "174379", "AccountReference": "3489FD36-8312-4FB1-B733-095875D74253", "TransactionDesc": "VENTURELIFTDONATION", "PartyB": "174379", "Amount": "1", "PartyA": "254711836370", "PhoneNumber": "711836370", "TransactionType": "CustomerPayBillOnline", "Timestamp": "20190710145003", "Password": "MTc0Mzc5YmZiMjc5ZjlhYTliZGJjZjE1OGU5N2RkNzFhNDY3Y2QyZTBjODkzMDU5YjEwZjc4ZTZiNzJhZGExZWQyYzkxOTIwMTkwNzEwMTQ1MDAz", "CallBackURL": "http://2ec1852e.ngrok.io/crowdfunding/mpesa_checkout_response"}	{\n                    "requestId":"22497-9481941-1",\n                    "errorCode": "400.002.02",\n                    "errorMessage": "Bad Request - Invalid PhoneNumber"\n                }\n            	400	27	\N
5	A78E0443-B616-4C99-953E-FA9492165EE4	2019-07-10 14:52:43.542215+03	{"BusinessShortCode": "174379", "AccountReference": "A78E0443-B616-4C99-953E-FA9492165EE4", "TransactionDesc": "VENTURELIFTDONATION", "PartyB": "174379", "Amount": "1", "PartyA": "254711836370", "PhoneNumber": "254711836370", "TransactionType": "CustomerPayBillOnline", "Timestamp": "20190710145237", "Password": "MTc0Mzc5YmZiMjc5ZjlhYTliZGJjZjE1OGU5N2RkNzFhNDY3Y2QyZTBjODkzMDU5YjEwZjc4ZTZiNzJhZGExZWQyYzkxOTIwMTkwNzEwMTQ1MjM3", "CallBackURL": "http://2ec1852e.ngrok.io/crowdfunding/mpesa_checkout_response"}	{\n            "MerchantRequestID":"10297-9567127-1",\n            "CheckoutRequestID":"ws_CO_DMZ_386545063_10072019145242766",\n            "ResponseCode": "0",\n            "ResponseDescription":"Success. Request accepted for processing",\n            "CustomerMessage":"Success. Request accepted for processing"\n        }\n        	200	28	\N
6	177EF712-54AB-4243-9B40-1AA229EC64EA	2019-07-10 14:54:13.802465+03	{"BusinessShortCode": "174379", "AccountReference": "177EF712-54AB-4243-9B40-1AA229EC64EA", "TransactionDesc": "VENTURELIFTDONATION", "PartyB": "174379", "Amount": "10", "PartyA": "254711836370", "PhoneNumber": "254711836370", "TransactionType": "CustomerPayBillOnline", "Timestamp": "20190710145407", "Password": "MTc0Mzc5YmZiMjc5ZjlhYTliZGJjZjE1OGU5N2RkNzFhNDY3Y2QyZTBjODkzMDU5YjEwZjc4ZTZiNzJhZGExZWQyYzkxOTIwMTkwNzEwMTQ1NDA3", "CallBackURL": "http://2ec1852e.ngrok.io/crowdfunding/mpesa_checkout_response"}	{\n            "MerchantRequestID":"3243-1051464-1",\n            "CheckoutRequestID":"ws_CO_DMZ_537047848_10072019145411157",\n            "ResponseCode": "0",\n            "ResponseDescription":"Success. Request accepted for processing",\n            "CustomerMessage":"Success. Request accepted for processing"\n        }\n        	200	29	\N
7	ANNONYMUS30	2019-07-10 14:59:13.529202+03	{"BusinessShortCode": "174379", "AccountReference": "ANNONYMUS30", "TransactionDesc": "VENTURELIFTDONATION", "PartyB": "174379", "Amount": "1", "PartyA": "254711836370", "PhoneNumber": "254711836370", "TransactionType": "CustomerPayBillOnline", "Timestamp": "20190710145907", "Password": "MTc0Mzc5YmZiMjc5ZjlhYTliZGJjZjE1OGU5N2RkNzFhNDY3Y2QyZTBjODkzMDU5YjEwZjc4ZTZiNzJhZGExZWQyYzkxOTIwMTkwNzEwMTQ1OTA3", "CallBackURL": "http://2ec1852e.ngrok.io/crowdfunding/mpesa_checkout_response"}	{\n            "MerchantRequestID":"10300-9570721-1",\n            "CheckoutRequestID":"ws_CO_DMZ_537049452_10072019145910936",\n            "ResponseCode": "0",\n            "ResponseDescription":"Success. Request accepted for processing",\n            "CustomerMessage":"Success. Request accepted for processing"\n        }\n        	200	30	\N
8	ANNONYMUS31	2019-07-10 15:04:59.328926+03	{"BusinessShortCode": "174379", "AccountReference": "ANNONYMUS31", "TransactionDesc": "VENTURELIFTDONATION", "PartyB": "174379", "Amount": "1", "PartyA": "254711836370", "PhoneNumber": "254711836370", "TransactionType": "CustomerPayBillOnline", "Timestamp": "20190710150448", "Password": "MTc0Mzc5YmZiMjc5ZjlhYTliZGJjZjE1OGU5N2RkNzFhNDY3Y2QyZTBjODkzMDU5YjEwZjc4ZTZiNzJhZGExZWQyYzkxOTIwMTkwNzEwMTUwNDQ4", "CallBackURL": "http://2ec1852e.ngrok.io/crowdfunding/mpesa_checkout_response"}	{\n            "MerchantRequestID":"10305-9574027-1",\n            "CheckoutRequestID":"ws_CO_DMZ_386547981_10072019150458599",\n            "ResponseCode": "0",\n            "ResponseDescription":"Success. Request accepted for processing",\n            "CustomerMessage":"Success. Request accepted for processing"\n        }\n        	200	31	\N
9	ANNONYMUS32	2019-07-10 15:07:34.247754+03	{"BusinessShortCode": "174379", "AccountReference": "ANNONYMUS32", "TransactionDesc": "VENTURELIFTDONATION", "PartyB": "174379", "Amount": "1", "PartyA": "254711836370", "PhoneNumber": "254711836370", "TransactionType": "CustomerPayBillOnline", "Timestamp": "20190710150728", "Password": "MTc0Mzc5YmZiMjc5ZjlhYTliZGJjZjE1OGU5N2RkNzFhNDY3Y2QyZTBjODkzMDU5YjEwZjc4ZTZiNzJhZGExZWQyYzkxOTIwMTkwNzEwMTUwNzI4", "CallBackURL": "http://2ec1852e.ngrok.io/crowdfunding/mpesa_checkout_response"}	{\n            "MerchantRequestID":"10303-9575462-1",\n            "CheckoutRequestID":"ws_CO_DMZ_537051564_10072019150731692",\n            "ResponseCode": "0",\n            "ResponseDescription":"Success. Request accepted for processing",\n            "CustomerMessage":"Success. Request accepted for processing"\n        }\n        	200	32	\N
10	ANNONYMUS33	2019-07-10 15:14:58.03175+03	{"BusinessShortCode": "174379", "AccountReference": "ANNONYMUS33", "TransactionDesc": "VENTURELIFTDONATION", "PartyB": "174379", "Amount": "1", "PartyA": "254711836370", "PhoneNumber": "254711836370", "TransactionType": "CustomerPayBillOnline", "Timestamp": "20190710151452", "Password": "MTc0Mzc5YmZiMjc5ZjlhYTliZGJjZjE1OGU5N2RkNzFhNDY3Y2QyZTBjODkzMDU5YjEwZjc4ZTZiNzJhZGExZWQyYzkxOTIwMTkwNzEwMTUxNDUy", "CallBackURL": "http://2ec1852e.ngrok.io/crowdfunding/mpesa_checkout_response"}	{\n            "MerchantRequestID":"22497-9495200-1",\n            "CheckoutRequestID":"ws_CO_DMZ_386550963_10072019151457340",\n            "ResponseCode": "0",\n            "ResponseDescription":"Success. Request accepted for processing",\n            "CustomerMessage":"Success. Request accepted for processing"\n        }\n        	200	33	\N
11	ANNONYMUS34	2019-07-10 15:17:57.396748+03	{"BusinessShortCode": "174379", "AccountReference": "ANNONYMUS34", "TransactionDesc": "VENTURELIFTDONATION", "PartyB": "174379", "Amount": "1", "PartyA": "254711836370", "PhoneNumber": "254711836370", "TransactionType": "CustomerPayBillOnline", "Timestamp": "20190710151751", "Password": "MTc0Mzc5YmZiMjc5ZjlhYTliZGJjZjE1OGU5N2RkNzFhNDY3Y2QyZTBjODkzMDU5YjEwZjc4ZTZiNzJhZGExZWQyYzkxOTIwMTkwNzEwMTUxNzUx", "CallBackURL": "http://2ec1852e.ngrok.io/crowdfunding/mpesa_checkout_response"}	{\n            "MerchantRequestID":"19654-1078057-1",\n            "CheckoutRequestID":"ws_CO_DMZ_386551829_10072019151756702",\n            "ResponseCode": "0",\n            "ResponseDescription":"Success. Request accepted for processing",\n            "CustomerMessage":"Success. Request accepted for processing"\n        }\n        	200	34	\N
12	ANNONYMUS35	2019-07-10 15:47:47.491518+03	{"BusinessShortCode": "174379", "AccountReference": "ANNONYMUS35", "TransactionDesc": "VENTURELIFTDONATION", "PartyB": "174379", "Amount": "1", "PartyA": "254711836370", "PhoneNumber": "254711836370", "TransactionType": "CustomerPayBillOnline", "Timestamp": "20190710154726", "Password": "MTc0Mzc5YmZiMjc5ZjlhYTliZGJjZjE1OGU5N2RkNzFhNDY3Y2QyZTBjODkzMDU5YjEwZjc4ZTZiNzJhZGExZWQyYzkxOTIwMTkwNzEwMTU0NzI2", "CallBackURL": "http://2ec1852e.ngrok.io/crowdfunding/mpesa_checkout_response"}	{\n            "MerchantRequestID":"17816-9427469-1",\n            "CheckoutRequestID":"ws_CO_DMZ_537061106_10072019154744842",\n            "ResponseCode": "0",\n            "ResponseDescription":"Success. Request accepted for processing",\n            "CustomerMessage":"Success. Request accepted for processing"\n        }\n        	200	35	ws_CO_DMZ_537061106_10072019154744842
13	ANNONYMUS36	2019-07-10 15:56:47.666468+03	{"BusinessShortCode": "174379", "AccountReference": "ANNONYMUS36", "TransactionDesc": "VENTURELIFTDONATION", "PartyB": "174379", "Amount": "1", "PartyA": "254711836370", "PhoneNumber": "254711836370", "TransactionType": "CustomerPayBillOnline", "Timestamp": "20190710155641", "Password": "MTc0Mzc5YmZiMjc5ZjlhYTliZGJjZjE1OGU5N2RkNzFhNDY3Y2QyZTBjODkzMDU5YjEwZjc4ZTZiNzJhZGExZWQyYzkxOTIwMTkwNzEwMTU1NjQx", "CallBackURL": "http://2ec1852e.ngrok.io/crowdfunding/mpesa_checkout_response"}	{\n            "MerchantRequestID":"17820-9432713-1",\n            "CheckoutRequestID":"ws_CO_DMZ_386562309_10072019155646856",\n            "ResponseCode": "0",\n            "ResponseDescription":"Success. Request accepted for processing",\n            "CustomerMessage":"Success. Request accepted for processing"\n        }\n        	200	36	ws_CO_DMZ_386562309_10072019155646856
14	ANNONYMUS37	2019-07-10 16:00:20.648934+03	{"BusinessShortCode": "174379", "AccountReference": "ANNONYMUS37", "TransactionDesc": "VENTURELIFTDONATION", "PartyB": "174379", "Amount": "1", "PartyA": "254711836370", "PhoneNumber": "254711836370", "TransactionType": "CustomerPayBillOnline", "Timestamp": "20190710160014", "Password": "MTc0Mzc5YmZiMjc5ZjlhYTliZGJjZjE1OGU5N2RkNzFhNDY3Y2QyZTBjODkzMDU5YjEwZjc4ZTZiNzJhZGExZWQyYzkxOTIwMTkwNzEwMTYwMDE0", "CallBackURL": "http://2ec1852e.ngrok.io/crowdfunding/mpesa_checkout_response"}	{\n            "MerchantRequestID":"10302-9606730-1",\n            "CheckoutRequestID":"ws_CO_DMZ_537064059_10072019160017979",\n            "ResponseCode": "0",\n            "ResponseDescription":"Success. Request accepted for processing",\n            "CustomerMessage":"Success. Request accepted for processing"\n        }\n        	200	37	ws_CO_DMZ_537064059_10072019160017979
15	ANNONYMUS38	2019-07-10 16:04:05.843922+03	{"BusinessShortCode": "174379", "AccountReference": "ANNONYMUS38", "TransactionDesc": "VENTURELIFTDONATION", "PartyB": "174379", "Amount": "1", "PartyA": "254711836370", "PhoneNumber": "254711836370", "TransactionType": "CustomerPayBillOnline", "Timestamp": "20190710160359", "Password": "MTc0Mzc5YmZiMjc5ZjlhYTliZGJjZjE1OGU5N2RkNzFhNDY3Y2QyZTBjODkzMDU5YjEwZjc4ZTZiNzJhZGExZWQyYzkxOTIwMTkwNzEwMTYwMzU5", "CallBackURL": "http://2ec1852e.ngrok.io/crowdfunding/mpesa_checkout_response"}	{\n            "MerchantRequestID":"3240-1092569-1",\n            "CheckoutRequestID":"ws_CO_DMZ_537064883_10072019160403172",\n            "ResponseCode": "0",\n            "ResponseDescription":"Success. Request accepted for processing",\n            "CustomerMessage":"Success. Request accepted for processing"\n        }\n        	200	38	ws_CO_DMZ_537064883_10072019160403172
16	ANNONYMUS39	2019-07-10 16:05:13.133637+03	{"BusinessShortCode": "174379", "AccountReference": "ANNONYMUS39", "TransactionDesc": "VENTURELIFTDONATION", "PartyB": "174379", "Amount": "1", "PartyA": "254711836370", "PhoneNumber": "254711836370", "TransactionType": "CustomerPayBillOnline", "Timestamp": "20190710160507", "Password": "MTc0Mzc5YmZiMjc5ZjlhYTliZGJjZjE1OGU5N2RkNzFhNDY3Y2QyZTBjODkzMDU5YjEwZjc4ZTZiNzJhZGExZWQyYzkxOTIwMTkwNzEwMTYwNTA3", "CallBackURL": "http://2ec1852e.ngrok.io/crowdfunding/mpesa_checkout_response"}	{\n            "MerchantRequestID":"3242-1093309-1",\n            "CheckoutRequestID":"ws_CO_DMZ_537065153_10072019160510443",\n            "ResponseCode": "0",\n            "ResponseDescription":"Success. Request accepted for processing",\n            "CustomerMessage":"Success. Request accepted for processing"\n        }\n        	200	39	ws_CO_DMZ_537065153_10072019160510443
17	ANNONYMUS40	2019-07-10 16:07:55.837668+03	{"BusinessShortCode": "174379", "AccountReference": "ANNONYMUS40", "TransactionDesc": "VENTURELIFTDONATION", "PartyB": "174379", "Amount": "1", "PartyA": "254711836370", "PhoneNumber": "254711836370", "TransactionType": "CustomerPayBillOnline", "Timestamp": "20190710160748", "Password": "MTc0Mzc5YmZiMjc5ZjlhYTliZGJjZjE1OGU5N2RkNzFhNDY3Y2QyZTBjODkzMDU5YjEwZjc4ZTZiNzJhZGExZWQyYzkxOTIwMTkwNzEwMTYwNzQ4", "CallBackURL": "http://2ec1852e.ngrok.io/crowdfunding/mpesa_checkout_response"}	{\n            "MerchantRequestID":"22497-9526643-1",\n            "CheckoutRequestID":"ws_CO_DMZ_386565643_10072019160754147",\n            "ResponseCode": "0",\n            "ResponseDescription":"Success. Request accepted for processing",\n            "CustomerMessage":"Success. Request accepted for processing"\n        }\n        	200	40	ws_CO_DMZ_386565643_10072019160754147
18	ANNONYMUS41	2019-07-10 16:10:11.018759+03	{"BusinessShortCode": "174379", "AccountReference": "ANNONYMUS41", "TransactionDesc": "VENTURELIFTDONATION", "PartyB": "174379", "Amount": "1", "PartyA": "254711836370", "PhoneNumber": "254711836370", "TransactionType": "CustomerPayBillOnline", "Timestamp": "20190710161004", "Password": "MTc0Mzc5YmZiMjc5ZjlhYTliZGJjZjE1OGU5N2RkNzFhNDY3Y2QyZTBjODkzMDU5YjEwZjc4ZTZiNzJhZGExZWQyYzkxOTIwMTkwNzEwMTYxMDA0", "CallBackURL": "http://2ec1852e.ngrok.io/crowdfunding/mpesa_checkout_response"}	{\n            "MerchantRequestID":"3244-1096132-1",\n            "CheckoutRequestID":"ws_CO_DMZ_386566150_10072019161010246",\n            "ResponseCode": "0",\n            "ResponseDescription":"Success. Request accepted for processing",\n            "CustomerMessage":"Success. Request accepted for processing"\n        }\n        	200	41	ws_CO_DMZ_386566150_10072019161010246
19	ANNONYMUS42	2019-07-10 16:11:49.937076+03	{"BusinessShortCode": "174379", "AccountReference": "ANNONYMUS42", "TransactionDesc": "VENTURELIFTDONATION", "PartyB": "174379", "Amount": "1", "PartyA": "254711836370", "PhoneNumber": "254711836370", "TransactionType": "CustomerPayBillOnline", "Timestamp": "20190710161142", "Password": "MTc0Mzc5YmZiMjc5ZjlhYTliZGJjZjE1OGU5N2RkNzFhNDY3Y2QyZTBjODkzMDU5YjEwZjc4ZTZiNzJhZGExZWQyYzkxOTIwMTkwNzEwMTYxMTQy", "CallBackURL": "http://2ec1852e.ngrok.io/crowdfunding/mpesa_checkout_response"}	{\n            "MerchantRequestID":"3243-1097073-1",\n            "CheckoutRequestID":"ws_CO_DMZ_537066978_10072019161147141",\n            "ResponseCode": "0",\n            "ResponseDescription":"Success. Request accepted for processing",\n            "CustomerMessage":"Success. Request accepted for processing"\n        }\n        	200	42	ws_CO_DMZ_537066978_10072019161147141
20	ANNONYMUS43	2019-07-10 16:14:44.938657+03	{"BusinessShortCode": "174379", "AccountReference": "ANNONYMUS43", "TransactionDesc": "VENTURELIFTDONATION", "PartyB": "174379", "Amount": "1", "PartyA": "254711836370", "PhoneNumber": "254711836370", "TransactionType": "CustomerPayBillOnline", "Timestamp": "20190710161436", "Password": "MTc0Mzc5YmZiMjc5ZjlhYTliZGJjZjE1OGU5N2RkNzFhNDY3Y2QyZTBjODkzMDU5YjEwZjc4ZTZiNzJhZGExZWQyYzkxOTIwMTkwNzEwMTYxNDM2", "CallBackURL": "http://2ec1852e.ngrok.io/crowdfunding/mpesa_checkout_response"}	{\n            "MerchantRequestID":"19654-1112520-1",\n            "CheckoutRequestID":"ws_CO_DMZ_537067787_10072019161439214",\n            "ResponseCode": "0",\n            "ResponseDescription":"Success. Request accepted for processing",\n            "CustomerMessage":"Success. Request accepted for processing"\n        }\n        	200	43	ws_CO_DMZ_537067787_10072019161439214
21	ANNONYMUS44	2019-07-10 16:18:27.853718+03	{"BusinessShortCode": "174379", "AccountReference": "ANNONYMUS44", "TransactionDesc": "VENTURELIFTDONATION", "PartyB": "174379", "Amount": "1", "PartyA": "254711836370", "PhoneNumber": "254711836370", "TransactionType": "CustomerPayBillOnline", "Timestamp": "20190710161821", "Password": "MTc0Mzc5YmZiMjc5ZjlhYTliZGJjZjE1OGU5N2RkNzFhNDY3Y2QyZTBjODkzMDU5YjEwZjc4ZTZiNzJhZGExZWQyYzkxOTIwMTkwNzEwMTYxODIx", "CallBackURL": "http://2ec1852e.ngrok.io/crowdfunding/mpesa_checkout_response"}	{\n            "MerchantRequestID":"22497-9534231-1",\n            "CheckoutRequestID":"ws_CO_DMZ_386568100_10072019161827099",\n            "ResponseCode": "0",\n            "ResponseDescription":"Success. Request accepted for processing",\n            "CustomerMessage":"Success. Request accepted for processing"\n        }\n        	200	44	ws_CO_DMZ_386568100_10072019161827099
22	ANNONYMUS45	2019-07-10 16:21:21.01479+03	{"BusinessShortCode": "174379", "AccountReference": "ANNONYMUS45", "TransactionDesc": "VENTURELIFTDONATION", "PartyB": "174379", "Amount": "1", "PartyA": "254711836370", "PhoneNumber": "254711836370", "TransactionType": "CustomerPayBillOnline", "Timestamp": "20190710162114", "Password": "MTc0Mzc5YmZiMjc5ZjlhYTliZGJjZjE1OGU5N2RkNzFhNDY3Y2QyZTBjODkzMDU5YjEwZjc4ZTZiNzJhZGExZWQyYzkxOTIwMTkwNzEwMTYyMTE0", "CallBackURL": "http://2ec1852e.ngrok.io/crowdfunding/mpesa_checkout_response"}	{\n            "MerchantRequestID":"22497-9535829-1",\n            "CheckoutRequestID":"ws_CO_DMZ_386568806_10072019162120151",\n            "ResponseCode": "0",\n            "ResponseDescription":"Success. Request accepted for processing",\n            "CustomerMessage":"Success. Request accepted for processing"\n        }\n        	200	45	ws_CO_DMZ_386568806_10072019162120151
23	ANNONYMUS46	2019-07-10 16:23:10.276486+03	{"BusinessShortCode": "174379", "AccountReference": "ANNONYMUS46", "TransactionDesc": "VENTURELIFTDONATION", "PartyB": "174379", "Amount": "1", "PartyA": "254711836370", "PhoneNumber": "254711836370", "TransactionType": "CustomerPayBillOnline", "Timestamp": "20190710162304", "Password": "MTc0Mzc5YmZiMjc5ZjlhYTliZGJjZjE1OGU5N2RkNzFhNDY3Y2QyZTBjODkzMDU5YjEwZjc4ZTZiNzJhZGExZWQyYzkxOTIwMTkwNzEwMTYyMzA0", "CallBackURL": "http://2ec1852e.ngrok.io/crowdfunding/mpesa_checkout_response"}	{\n            "MerchantRequestID":"22489-9537308-1",\n            "CheckoutRequestID":"ws_CO_DMZ_386569180_10072019162309511",\n            "ResponseCode": "0",\n            "ResponseDescription":"Success. Request accepted for processing",\n            "CustomerMessage":"Success. Request accepted for processing"\n        }\n        	200	46	ws_CO_DMZ_386569180_10072019162309511
\.


--
-- Data for Name: crowdfunding_mpesastkresponse; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.crowdfunding_mpesastkresponse (id, name, created_at, response_json) FROM stdin;
1	STK Response	2019-07-10 15:15:10.91002+03	{"Body":{"stkCallback":{"MerchantRequestID":"22497-9495200-1","CheckoutRequestID":"ws_CO_DMZ_386550963_10072019151457340","ResultCode":0,"ResultDesc":"The service request is processed successfully.","CallbackMetadata":{"Item":[{"Name":"Amount","Value":1.00},{"Name":"MpesaReceiptNumber","Value":"NGA66MLSO0"},{"Name":"Balance"},{"Name":"TransactionDate","Value":20190710151510},{"Name":"PhoneNumber","Value":254711836370}]}}}}
2	STK Response	2019-07-10 15:18:09.012555+03	{"Body":{"stkCallback":{"MerchantRequestID":"19654-1078057-1","CheckoutRequestID":"ws_CO_DMZ_386551829_10072019151756702","ResultCode":2001,"ResultDesc":"[MpesaCB - ]The initiator information is invalid."}}}
3	STK Response	2019-07-10 15:48:01.054596+03	{"Body":{"stkCallback":{"MerchantRequestID":"17816-9427469-1","CheckoutRequestID":"ws_CO_DMZ_537061106_10072019154744842","ResultCode":0,"ResultDesc":"The service request is processed successfully.","CallbackMetadata":{"Item":[{"Name":"Amount","Value":1.00},{"Name":"MpesaReceiptNumber","Value":"NGA36NJV9F"},{"Name":"Balance"},{"Name":"TransactionDate","Value":20190710154759},{"Name":"PhoneNumber","Value":254711836370}]}}}}
4	STK Response	2019-07-10 15:56:58.731158+03	{"Body":{"stkCallback":{"MerchantRequestID":"17820-9432713-1","CheckoutRequestID":"ws_CO_DMZ_386562309_10072019155646856","ResultCode":0,"ResultDesc":"The service request is processed successfully.","CallbackMetadata":{"Item":[{"Name":"Amount","Value":1.00},{"Name":"MpesaReceiptNumber","Value":"NGA26NT9MI"},{"Name":"Balance"},{"Name":"TransactionDate","Value":20190710155657},{"Name":"PhoneNumber","Value":254711836370}]}}}}
5	STK Response	2019-07-10 16:04:18.035717+03	{"Body":{"stkCallback":{"MerchantRequestID":"3240-1092569-1","CheckoutRequestID":"ws_CO_DMZ_537064883_10072019160403172","ResultCode":0,"ResultDesc":"The service request is processed successfully.","CallbackMetadata":{"Item":[{"Name":"Amount","Value":1.00},{"Name":"MpesaReceiptNumber","Value":"NGA16O10VT"},{"Name":"Balance"},{"Name":"TransactionDate","Value":20190710160417},{"Name":"PhoneNumber","Value":254711836370}]}}}}
6	STK Response	2019-07-10 16:05:26.15686+03	{"Body":{"stkCallback":{"MerchantRequestID":"3242-1093309-1","CheckoutRequestID":"ws_CO_DMZ_537065153_10072019160510443","ResultCode":0,"ResultDesc":"The service request is processed successfully.","CallbackMetadata":{"Item":[{"Name":"Amount","Value":1.00},{"Name":"MpesaReceiptNumber","Value":"NGA26O28WU"},{"Name":"Balance"},{"Name":"TransactionDate","Value":20190710160524},{"Name":"PhoneNumber","Value":254711836370}]}}}}
7	STK Response	2019-07-10 16:10:22.441221+03	{"Body":{"stkCallback":{"MerchantRequestID":"3244-1096132-1","CheckoutRequestID":"ws_CO_DMZ_386566150_10072019161010246","ResultCode":0,"ResultDesc":"The service request is processed successfully.","CallbackMetadata":{"Item":[{"Name":"Amount","Value":1.00},{"Name":"MpesaReceiptNumber","Value":"NGA66O7L08"},{"Name":"Balance"},{"Name":"TransactionDate","Value":20190710161021},{"Name":"PhoneNumber","Value":254711836370}]}}}}
8	STK Response	2019-07-10 16:15:05.108136+03	{"Body":{"stkCallback":{"MerchantRequestID":"19654-1112520-1","CheckoutRequestID":"ws_CO_DMZ_537067787_10072019161439214","ResultCode":0,"ResultDesc":"The service request is processed successfully.","CallbackMetadata":{"Item":[{"Name":"Amount","Value":1.00},{"Name":"MpesaReceiptNumber","Value":"NGA76OCOYR"},{"Name":"Balance"},{"Name":"TransactionDate","Value":20190710161503},{"Name":"PhoneNumber","Value":254711836370}]}}}}
9	STK Response	2019-07-10 16:18:37.410515+03	{"Body":{"stkCallback":{"MerchantRequestID":"22497-9534231-1","CheckoutRequestID":"ws_CO_DMZ_386568100_10072019161827099","ResultCode":0,"ResultDesc":"The service request is processed successfully.","CallbackMetadata":{"Item":[{"Name":"Amount","Value":1.00},{"Name":"MpesaReceiptNumber","Value":"NGA56OGIB5"},{"Name":"Balance"},{"Name":"TransactionDate","Value":20190710161836},{"Name":"PhoneNumber","Value":254711836370}]}}}}
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2019-06-07 15:34:04.319872+03	2	Software Technology	1	[{"added": {}}]	79	3
2	2019-06-08 23:51:33.610872+03	1	Configurations	1	[{"added": {}}]	83	3
3	2019-06-08 23:51:44.490055+03	1	Configurations	2	[]	83	3
4	2019-06-09 23:24:53.144003+03	1	Agriculture Cabbage Growth	2	[{"changed": {"fields": ["approved", "comments"]}}]	82	3
5	2019-06-09 23:36:18.435986+03	1	Agriculture Cabbage Growth	2	[{"changed": {"fields": ["approval_status"]}}]	82	3
6	2019-06-09 23:44:54.318551+03	1	Agriculture Cabbage Growth	2	[]	82	3
7	2019-06-09 23:47:14.776665+03	1	Agriculture Cabbage Growth	2	[{"changed": {"fields": ["approval_status"]}}]	82	3
8	2019-06-09 23:47:49.099934+03	1	Agriculture Cabbage Growth	2	[{"changed": {"fields": ["approval_status"]}}]	82	3
9	2019-06-09 23:48:54.111959+03	1	Agriculture Cabbage Growth	2	[{"changed": {"fields": ["approval_status"]}}]	82	3
10	2019-06-09 23:55:39.901578+03	1	Agriculture Cabbage Growth	2	[{"changed": {"fields": ["approval_status"]}}]	82	3
11	2019-06-09 23:56:01.09312+03	1	Agriculture Cabbage Growth	2	[{"changed": {"fields": ["approval_status"]}}]	82	3
12	2019-06-09 23:58:06.902443+03	1	Agriculture Cabbage Growth	2	[{"changed": {"fields": ["approval_status"]}}]	82	3
13	2019-06-09 23:58:31.455102+03	1	Agriculture Cabbage Growth	2	[{"changed": {"fields": ["approval_status"]}}]	82	3
14	2019-06-09 23:58:48.16736+03	1	Agriculture Cabbage Growth	2	[{"changed": {"fields": ["approval_status"]}}]	82	3
15	2019-06-10 00:41:56.322338+03	5	Earth	2	[{"changed": {"fields": ["approval_status"]}}]	82	3
16	2019-06-10 11:09:46.547912+03	6	Beach Reserve	2	[{"changed": {"fields": ["approval_status", "comments"]}}]	82	3
17	2019-06-10 13:50:23.991315+03	11	w	2	[{"changed": {"fields": ["approval_status", "comments"]}}]	82	3
18	2019-06-10 13:55:35.570442+03	15	wetr	2	[{"changed": {"fields": ["approval_status", "comments"]}}]	82	3
19	2019-06-10 14:00:23.403174+03	16	wtyu	2	[{"changed": {"fields": ["approval_status", "comments"]}}]	82	3
20	2019-06-11 10:31:26.160814+03	3	Agriculture	1	[{"added": {}}]	79	3
21	2019-06-11 10:51:19.373916+03	18	Earth3	2	[{"changed": {"fields": ["approval_status", "comments"]}}]	82	3
22	2019-06-12 14:02:14.200385+03	20	Earth Preserve	2	[{"changed": {"fields": ["approval_status", "comments"]}}]	82	3
23	2019-06-13 13:31:35.409779+03	1	xero	2	[{"changed": {"fields": ["verified"]}}]	66	3
24	2019-06-18 14:02:37.390606+03	21	jvghv	2	[{"changed": {"fields": ["approval_status", "comments"]}}]	82	3
25	2019-06-19 00:08:26.37553+03	1	jvghv	2	[{"changed": {"fields": ["reward_status", "comments"]}}]	93	3
26	2019-06-19 00:10:18.086532+03	1	jvghv	2	[{"changed": {"fields": ["reward_status", "comments"]}}]	93	3
27	2019-06-19 00:10:50.956161+03	1	jvghv	2	[{"changed": {"fields": ["reward_status", "comments"]}}]	93	3
28	2019-06-19 00:26:46.788275+03	22	Earth6	2	[{"changed": {"fields": ["approval_status", "comments"]}}]	82	3
29	2019-06-19 00:27:59.171422+03	2	Earth6	2	[{"changed": {"fields": ["reward_status", "comments"]}}]	93	3
30	2019-06-19 02:41:45.83112+03	5	xero	2	[{"changed": {"fields": ["approval_status"]}}]	90	3
31	2019-06-28 17:57:53.771213+03	5	tryfiana20	2	[{"changed": {"fields": ["verified"]}}]	75	3
32	2019-07-01 12:54:43.944915+03	1	me	2	[{"changed": {"fields": ["approval_status"]}}]	102	3
33	2019-07-19 16:25:05.703995+03	1	Trends	1	[{"added": {}}]	84	3
34	2019-07-19 16:55:09.636854+03	1	Diaspora	1	[{"added": {}}]	59	3
35	2019-07-19 17:12:27.507782+03	1	earth	1	[{"added": {}}]	60	3
36	2019-07-25 15:59:20.267867+03	1	Home	1	[{"added": {}}]	2	3
37	2019-07-25 16:07:30.262892+03	3	Culture	1	[{"added": {}}]	2	3
38	2019-07-25 16:08:56.929165+03	1	video	1	[{"added": {}}]	44	3
39	2019-07-26 11:16:51.866414+03	1	earth	2	[]	60	3
40	2019-07-26 11:32:50.106474+03	4	Diaspora	1	[{"added": {}}]	2	3
41	2019-07-26 12:08:06.343343+03	4	Diaspora	2		2	3
42	2019-07-26 12:08:59.14653+03	4	Diaspora	2	[{"changed": {"fields": ["template", "application_urls", "application_namespace", "xframe_options"]}}]	2	3
43	2019-07-26 12:10:18.798166+03	1	Trial 1	1	[{"added": {}}]	61	3
44	2019-07-26 12:10:45.046737+03	2	TRial 2	1	[{"added": {}}]	61	3
45	2019-07-26 12:10:53.578853+03	2	Trial 2	2	[{"changed": {"fields": ["title"]}}]	61	3
46	2019-07-26 12:17:21.985662+03	6	Investment	1	[{"added": {}}]	2	3
47	2019-07-26 12:17:29.015988+03	6	Investment	2		2	3
48	2019-07-26 12:18:21.159595+03	6	Investment	2	[{"changed": {"fields": ["template", "application_urls", "application_namespace", "xframe_options"]}}]	2	3
49	2019-07-26 12:43:03.193142+03	8	Trade	1	[{"added": {}}]	2	3
50	2019-07-26 12:43:37.881459+03	8	Trade	2	[{"changed": {"fields": ["template", "application_urls", "application_namespace", "xframe_options"]}}]	2	3
51	2019-07-26 12:43:41.886+03	8	Trade	2		2	3
52	2019-08-08 15:27:26.901967+03	2	More Stories	1	[{"added": {}}]	59	3
53	2019-08-08 16:10:57.879629+03	1	earth	2	[{"changed": {"fields": ["priority"]}}]	60	3
54	2019-08-08 16:11:10.591609+03	1	Trial 1	2	[{"changed": {"fields": ["priority"]}}]	61	3
55	2019-08-08 16:11:46.062393+03	1	Trial 1	2	[{"changed": {"fields": ["priority"]}}]	61	3
56	2019-08-14 12:22:34.459304+03	1	tryfiana@gmail.com	1	[{"added": {}}]	109	3
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	cms	placeholder
2	cms	page
3	jet	pinnedapplication
4	jet	bookmark
5	auth	group
6	auth	permission
7	auth	user
8	contenttypes	contenttype
9	sessions	session
10	admin	logentry
11	sites	site
12	cms	urlconfrevision
13	cms	cmsplugin
14	cms	pageusergroup
15	cms	staticplaceholder
16	cms	pagepermission
17	cms	title
18	cms	usersettings
19	cms	globalpagepermission
20	cms	treenode
21	cms	placeholderreference
22	cms	pageuser
23	cms	aliaspluginmodel
24	cms	pagetype
25	menus	cachekey
26	djangocms_text_ckeditor	text
27	filer	file
28	filer	folder
29	filer	thumbnailoption
30	filer	clipboarditem
31	filer	clipboard
32	filer	folderpermission
33	filer	image
34	easy_thumbnails	source
35	easy_thumbnails	thumbnail
36	easy_thumbnails	thumbnaildimensions
37	djangocms_column	multicolumns
38	djangocms_column	column
39	djangocms_file	file
40	djangocms_file	folder
41	djangocms_link	link
42	djangocms_picture	picture
43	djangocms_style	style
44	djangocms_snippet	snippet
45	djangocms_snippet	snippetptr
46	djangocms_googlemap	googlemaproute
47	djangocms_googlemap	googlemap
48	djangocms_googlemap	googlemapmarker
49	djangocms_video	videoplayer
50	djangocms_video	videosource
51	djangocms_video	videotrack
52	social_django	association
53	social_django	nonce
54	social_django	code
55	social_django	usersocialauth
56	social_django	partial
57	actstream	action
58	actstream	follow
59	venturelift_media	category
60	venturelift_media	textmedia
61	venturelift_media	audiovisual
62	venturelift_media	subscription
63	venturelift_media	newsletter
64	venturelift_profiles	businesscategory
65	venturelift_profiles	vlaservices
66	venturelift_profiles	business
67	venturelift_profiles	marketdescription
68	venturelift_profiles	businessmodel
69	venturelift_profiles	businessteam
70	venturelift_profiles	businessfinancial
71	venturelift_profiles	businessinvestment
72	venturelift_profiles	businessgoals
73	venturelift_profiles	supporter
74	venturelift_profiles	supporterprofile
75	venturelift_profiles	investor
76	venturelift_profiles	investorprofile
77	venturelift_profiles	post
78	crowdfunding	campaignpayment
79	crowdfunding	campaignsector
80	crowdfunding	campaignapproval
81	crowdfunding	campaigndisbursement
82	crowdfunding	campaign
83	crowdfunding	campaignconfiguration
84	knowledge_center	documentcategory
85	knowledge_center	videocategory
86	knowledge_center	textcenter
87	knowledge_center	audiovisual
88	events	eventcategory
89	events	events
90	venturelift_profiles	businessconnectrequest
91	events	networkevents
92	events	attendees
93	crowdfunding	campaignreward
94	venturelift_profiles	trackinguser
95	videomembership	membership
96	videomembership	usermembership
97	videomembership	subscription
98	venturelift_profiles	allsystemuser
99	knowledge_center	subdocumentcategory
100	venturelift_profiles	connectrequest
101	venturelift_profiles	supporterconnectrequest
102	venturelift_profiles	investorconnectrequest
103	crowdfunding	mpesaapitoken
104	crowdfunding	mpesastkpush
105	crowdfunding	mpesac2bregister
106	crowdfunding	mpesac2bnotification
107	crowdfunding	mpesastkresponse
108	videomembership	membershiptype
109	venturelift_profiles	surveyuser
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2019-06-06 16:31:03.135351+03
2	auth	0001_initial	2019-06-06 16:31:03.204777+03
3	actstream	0001_initial	2019-06-06 16:31:03.281407+03
4	actstream	0002_remove_action_data	2019-06-06 16:31:03.294164+03
5	actstream	0003_add_follow_flag	2019-06-06 16:31:03.344063+03
6	admin	0001_initial	2019-06-06 16:31:03.377921+03
7	admin	0002_logentry_remove_auto_add	2019-06-06 16:31:03.398144+03
8	contenttypes	0002_remove_content_type_name	2019-06-06 16:31:03.473395+03
9	auth	0002_alter_permission_name_max_length	2019-06-06 16:31:03.488066+03
10	auth	0003_alter_user_email_max_length	2019-06-06 16:31:03.506228+03
11	auth	0004_alter_user_username_opts	2019-06-06 16:31:03.521376+03
12	auth	0005_alter_user_last_login_null	2019-06-06 16:31:03.549367+03
13	auth	0006_require_contenttypes_0002	2019-06-06 16:31:03.551666+03
14	auth	0007_alter_validators_add_error_messages	2019-06-06 16:31:03.576155+03
15	auth	0008_alter_user_username_max_length	2019-06-06 16:31:03.596419+03
16	sites	0001_initial	2019-06-06 16:31:03.60843+03
17	cms	0001_initial	2019-06-06 16:31:03.794932+03
18	cms	0002_auto_20140816_1918	2019-06-06 16:31:04.248595+03
19	cms	0003_auto_20140926_2347	2019-06-06 16:31:04.280991+03
20	cms	0004_auto_20140924_1038	2019-06-06 16:31:04.574836+03
21	cms	0005_auto_20140924_1039	2019-06-06 16:31:04.666999+03
22	cms	0006_auto_20140924_1110	2019-06-06 16:31:04.867133+03
23	cms	0007_auto_20141028_1559	2019-06-06 16:31:04.890766+03
24	cms	0008_auto_20150208_2149	2019-06-06 16:31:04.908132+03
25	cms	0008_auto_20150121_0059	2019-06-06 16:31:04.991539+03
26	cms	0009_merge	2019-06-06 16:31:04.994193+03
27	cms	0010_migrate_use_structure	2019-06-06 16:31:05.082322+03
28	cms	0011_auto_20150419_1006	2019-06-06 16:31:05.106358+03
29	cms	0012_auto_20150607_2207	2019-06-06 16:31:05.180344+03
30	cms	0013_urlconfrevision	2019-06-06 16:31:05.192725+03
31	cms	0014_auto_20160404_1908	2019-06-06 16:31:05.258891+03
32	cms	0015_auto_20160421_0000	2019-06-06 16:31:05.280148+03
33	cms	0016_auto_20160608_1535	2019-06-06 16:31:05.347053+03
34	cms	0017_pagetype	2019-06-06 16:31:05.460342+03
35	cms	0018_pagenode	2019-06-06 16:31:05.680127+03
36	cms	0019_set_pagenode	2019-06-06 16:31:05.889324+03
37	cms	0020_old_tree_cleanup	2019-06-06 16:31:06.110376+03
38	cms	0021_auto_20180507_1432	2019-06-06 16:31:06.128174+03
39	cms	0022_auto_20180620_1551	2019-06-06 16:31:06.144941+03
40	django_registration	0001_initial	2019-06-06 16:31:06.207423+03
41	djangocms_column	0001_initial	2019-06-06 16:31:06.274962+03
42	djangocms_column	0002_auto_20160915_0818	2019-06-06 16:31:06.345274+03
43	filer	0001_initial	2019-06-06 16:31:06.829271+03
44	filer	0002_auto_20150606_2003	2019-06-06 16:31:06.876054+03
45	filer	0003_thumbnailoption	2019-06-06 16:31:06.889421+03
46	filer	0004_auto_20160328_1434	2019-06-06 16:31:06.912189+03
47	filer	0005_auto_20160623_1425	2019-06-06 16:31:07.027895+03
48	filer	0006_auto_20160623_1627	2019-06-06 16:31:07.070931+03
49	djangocms_file	0001_initial	2019-06-06 16:31:07.113856+03
50	djangocms_file	0002_auto_20151202_1551	2019-06-06 16:31:07.15984+03
51	djangocms_file	0003_remove_related_name_for_cmsplugin_ptr	2019-06-06 16:31:07.179582+03
52	djangocms_file	0004_set_related_name_for_cmsplugin_ptr	2019-06-06 16:31:07.270129+03
53	djangocms_file	0005_auto_20160119_1534	2019-06-06 16:31:07.287469+03
54	djangocms_file	0006_migrate_to_filer	2019-06-06 16:31:07.421013+03
55	djangocms_file	0007_adapted_fields	2019-06-06 16:31:07.651581+03
56	djangocms_file	0008_add_folder	2019-06-06 16:31:07.698506+03
57	djangocms_file	0009_fixed_null_fields	2019-06-06 16:31:07.770292+03
58	djangocms_file	0010_removed_null_fields	2019-06-06 16:31:07.798331+03
59	djangocms_file	0011_auto_20181211_0357	2019-06-06 16:31:07.840549+03
60	djangocms_googlemap	0001_initial	2019-06-06 16:31:07.884193+03
61	djangocms_googlemap	0002_auto_20160622_1031	2019-06-06 16:31:08.060907+03
62	djangocms_googlemap	0003_auto_20160825_1829	2019-06-06 16:31:08.079942+03
63	djangocms_googlemap	0004_adapted_fields	2019-06-06 16:31:08.812217+03
64	djangocms_googlemap	0005_create_nested_plugins	2019-06-06 16:31:08.89847+03
65	djangocms_googlemap	0006_remove_fields	2019-06-06 16:31:09.031287+03
66	djangocms_googlemap	0007_reset_null_values	2019-06-06 16:31:09.127491+03
67	djangocms_googlemap	0008_removed_null_fields	2019-06-06 16:31:09.151357+03
68	djangocms_googlemap	0009_googlemapmarker_icon	2019-06-06 16:31:09.201218+03
69	djangocms_link	0001_initial	2019-06-06 16:31:09.260816+03
70	djangocms_link	0002_auto_20140929_1705	2019-06-06 16:31:09.290906+03
71	djangocms_link	0003_auto_20150212_1310	2019-06-06 16:31:09.318491+03
72	djangocms_link	0004_auto_20150708_1133	2019-06-06 16:31:09.374876+03
73	djangocms_link	0005_auto_20151003_1710	2019-06-06 16:31:09.405171+03
74	djangocms_link	0006_remove_related_name_for_cmsplugin_ptr	2019-06-06 16:31:09.454096+03
75	djangocms_link	0007_set_related_name_for_cmsplugin_ptr	2019-06-06 16:31:09.591592+03
76	djangocms_link	0008_link_attributes	2019-06-06 16:31:09.629827+03
77	djangocms_link	0009_auto_20160705_1344	2019-06-06 16:31:09.659179+03
78	djangocms_link	0010_adapted_fields	2019-06-06 16:31:09.924834+03
79	djangocms_link	0011_fixed_null_values	2019-06-06 16:31:10.008538+03
80	djangocms_link	0012_removed_null	2019-06-06 16:31:10.099662+03
81	djangocms_link	0013_fix_hostname	2019-06-06 16:31:10.125912+03
82	djangocms_picture	0001_initial	2019-06-06 16:31:10.181311+03
83	djangocms_picture	0002_auto_20151018_1927	2019-06-06 16:31:10.327537+03
84	djangocms_picture	0003_migrate_to_filer	2019-06-06 16:31:10.611818+03
85	djangocms_picture	0004_adapt_fields	2019-06-06 16:31:11.539876+03
86	djangocms_picture	0005_reset_null_values	2019-06-06 16:31:11.627376+03
87	djangocms_picture	0006_remove_null_values	2019-06-06 16:31:11.79835+03
88	djangocms_picture	0007_fix_alignment	2019-06-06 16:31:11.836426+03
89	djangocms_picture	0008_picture_use_responsive_image	2019-06-06 16:31:11.884632+03
90	djangocms_picture	0009_auto_20181212_1003	2019-06-06 16:31:12.029698+03
91	djangocms_snippet	0001_initial	2019-06-06 16:31:12.100918+03
92	djangocms_snippet	0002_snippet_slug	2019-06-06 16:31:12.123722+03
93	djangocms_snippet	0003_auto_data_fill_slug	2019-06-06 16:31:12.208615+03
94	djangocms_snippet	0004_auto_alter_slug_unique	2019-06-06 16:31:12.229738+03
95	djangocms_snippet	0005_set_related_name_for_cmsplugin_ptr	2019-06-06 16:31:12.283854+03
96	djangocms_snippet	0006_auto_20160831_0729	2019-06-06 16:31:12.342577+03
97	djangocms_snippet	0007_auto_alter_template_helptext	2019-06-06 16:31:12.354664+03
98	djangocms_snippet	0008_auto_change_name	2019-06-06 16:31:12.454438+03
99	djangocms_style	0001_initial	2019-06-06 16:31:12.518495+03
100	djangocms_style	0002_set_related_name_for_cmsplugin_ptr	2019-06-06 16:31:12.579186+03
101	djangocms_style	0003_adapted_fields	2019-06-06 16:31:12.917878+03
102	djangocms_style	0004_use_positive_small_integer_field	2019-06-06 16:31:13.198305+03
103	djangocms_style	0005_reset_null_values	2019-06-06 16:31:13.280633+03
104	djangocms_style	0006_removed_null_fields	2019-06-06 16:31:13.310283+03
105	djangocms_style	0007_style_template	2019-06-06 16:31:13.341216+03
106	djangocms_text_ckeditor	0001_initial	2019-06-06 16:31:13.404847+03
107	djangocms_text_ckeditor	0002_remove_related_name_for_cmsplugin_ptr	2019-06-06 16:31:13.459524+03
108	djangocms_text_ckeditor	0003_set_related_name_for_cmsplugin_ptr	2019-06-06 16:31:13.519409+03
109	djangocms_text_ckeditor	0004_auto_20160706_1339	2019-06-06 16:31:13.604003+03
110	djangocms_video	0001_initial	2019-06-06 16:31:13.672543+03
111	djangocms_video	0002_set_related_name_for_cmsplugin_ptr	2019-06-06 16:31:13.729032+03
112	djangocms_video	0003_field_adaptions	2019-06-06 16:31:14.11148+03
113	djangocms_video	0004_move_to_attributes	2019-06-06 16:31:14.77918+03
114	djangocms_video	0005_migrate_to_filer	2019-06-06 16:31:14.862655+03
115	djangocms_video	0006_field_adaptions	2019-06-06 16:31:15.103143+03
116	djangocms_video	0007_create_nested_plugin	2019-06-06 16:31:15.320684+03
117	djangocms_video	0008_reset_null_values	2019-06-06 16:31:15.415103+03
118	djangocms_video	0009_removed_null_values	2019-06-06 16:31:15.456328+03
119	djangocms_video	0010_videoplayer_parameters	2019-06-06 16:31:15.508177+03
120	easy_thumbnails	0001_initial	2019-06-06 16:31:15.57239+03
121	easy_thumbnails	0002_thumbnaildimensions	2019-06-06 16:31:15.592512+03
122	filer	0007_auto_20161016_1055	2019-06-06 16:31:15.620392+03
123	filer	0008_auto_20171117_1313	2019-06-06 16:31:15.646611+03
124	filer	0009_auto_20171220_1635	2019-06-06 16:31:15.679826+03
125	filer	0010_auto_20180414_2058	2019-06-06 16:31:15.736666+03
126	filer	0011_auto_20190418_0137	2019-06-06 16:31:15.837698+03
127	jet	0001_initial	2019-06-06 16:31:15.875437+03
128	jet	0002_delete_userdashboardmodule	2019-06-06 16:31:15.962951+03
129	menus	0001_initial	2019-06-06 16:31:15.9809+03
130	sessions	0001_initial	2019-06-06 16:31:15.99955+03
131	sites	0002_alter_domain_unique	2019-06-06 16:31:16.02301+03
132	default	0001_initial	2019-06-06 16:31:16.17572+03
133	social_auth	0001_initial	2019-06-06 16:31:16.1783+03
134	default	0002_add_related_name	2019-06-06 16:31:16.241033+03
135	social_auth	0002_add_related_name	2019-06-06 16:31:16.2435+03
136	default	0003_alter_email_max_length	2019-06-06 16:31:16.257675+03
137	social_auth	0003_alter_email_max_length	2019-06-06 16:31:16.259918+03
138	default	0004_auto_20160423_0400	2019-06-06 16:31:16.286115+03
139	social_auth	0004_auto_20160423_0400	2019-06-06 16:31:16.288458+03
140	social_auth	0005_auto_20160727_2333	2019-06-06 16:31:16.303471+03
141	social_django	0006_partial	2019-06-06 16:31:16.32256+03
142	social_django	0007_code_timestamp	2019-06-06 16:31:16.344046+03
143	social_django	0008_partial_timestamp	2019-06-06 16:31:16.366306+03
144	social_django	0003_alter_email_max_length	2019-06-06 16:31:16.370609+03
145	social_django	0004_auto_20160423_0400	2019-06-06 16:31:16.3728+03
146	cms	0018_create_pagenode	2019-06-06 16:31:16.37501+03
147	social_django	0002_add_related_name	2019-06-06 16:31:16.377218+03
148	social_django	0005_auto_20160727_2333	2019-06-06 16:31:16.379317+03
149	social_django	0001_initial	2019-06-06 16:31:16.381563+03
150	venturelift_profiles	0001_initial	2019-06-06 16:56:36.25184+03
151	venturelift_media	0001_initial	2019-06-06 16:57:55.230169+03
152	crowdfunding	0001_initial	2019-06-07 15:32:04.814991+03
153	venturelift_profiles	0002_auto_20190608_2320	2019-06-08 23:20:12.756302+03
154	crowdfunding	0002_campaignconfiguration	2019-06-08 23:34:49.070079+03
155	crowdfunding	0003_auto_20190609_1843	2019-06-09 18:43:49.039554+03
156	crowdfunding	0004_auto_20190609_2316	2019-06-09 23:16:44.088023+03
157	crowdfunding	0005_auto_20190609_2321	2019-06-09 23:21:50.411622+03
158	crowdfunding	0006_campaign_approval_status	2019-06-09 23:35:53.288556+03
159	crowdfunding	0007_auto_20190610_0022	2019-06-10 00:22:27.623818+03
160	crowdfunding	0008_auto_20190610_1157	2019-06-10 11:57:26.012596+03
161	crowdfunding	0009_auto_20190610_1533	2019-06-10 15:33:14.607296+03
162	crowdfunding	0010_auto_20190610_1615	2019-06-10 16:15:16.236313+03
163	crowdfunding	0011_auto_20190610_1623	2019-06-10 16:23:25.180108+03
164	crowdfunding	0012_auto_20190610_1636	2019-06-10 16:36:11.351145+03
165	crowdfunding	0013_auto_20190611_0939	2019-06-11 09:40:36.078476+03
166	crowdfunding	0014_auto_20190611_0940	2019-06-11 09:40:36.242421+03
167	crowdfunding	0015_auto_20190611_0940	2019-06-11 09:40:36.298633+03
168	crowdfunding	0016_auto_20190612_1212	2019-06-12 12:13:04.775165+03
169	crowdfunding	0017_campaignpayment_allow_visibility	2019-06-13 13:27:42.645086+03
170	venturelift_profiles	0003_businessconnectrequest	2019-06-14 16:48:25.322022+03
171	crowdfunding	0018_auto_20190618_1348	2019-06-18 13:48:29.022406+03
172	crowdfunding	0019_auto_20190618_1410	2019-06-18 14:10:34.154022+03
173	crowdfunding	0020_auto_20190618_1418	2019-06-18 14:18:39.668414+03
174	crowdfunding	0021_auto_20190618_1420	2019-06-18 14:20:12.203821+03
175	crowdfunding	0022_auto_20190619_0003	2019-06-19 00:03:37.662599+03
176	crowdfunding	0023_auto_20190619_0202	2019-06-19 02:02:42.864862+03
177	venturelift_profiles	0004_post_blog_type	2019-06-19 02:02:42.932302+03
178	crowdfunding	0024_auto_20190619_0213	2019-06-19 02:13:23.766742+03
179	venturelift_profiles	0005_auto_20190619_0213	2019-06-19 02:13:24.168787+03
180	crowdfunding	0025_auto_20190619_0226	2019-06-19 02:26:19.226063+03
181	crowdfunding	0026_auto_20190619_0234	2019-06-19 02:34:26.83612+03
182	crowdfunding	0027_auto_20190619_0239	2019-06-19 02:39:38.115526+03
183	venturelift_profiles	0006_auto_20190619_0239	2019-06-19 02:39:38.216853+03
184	crowdfunding	0028_auto_20190619_0241	2019-06-19 02:41:03.804012+03
185	venturelift_profiles	0007_auto_20190619_0241	2019-06-19 02:41:03.896616+03
186	crowdfunding	0029_auto_20190619_0300	2019-06-19 03:00:59.151924+03
187	venturelift_profiles	0008_trackinguser	2019-06-19 03:00:59.246644+03
188	crowdfunding	0030_auto_20190619_1412	2019-06-19 14:12:36.562493+03
189	crowdfunding	0031_auto_20190622_1321	2019-06-22 13:21:49.577055+03
190	crowdfunding	0032_auto_20190624_1135	2019-06-24 11:35:45.654714+03
191	crowdfunding	0033_auto_20190624_1156	2019-06-24 11:56:28.279973+03
192	crowdfunding	0034_auto_20190624_1201	2019-06-24 12:01:20.979163+03
193	crowdfunding	0035_auto_20190624_1349	2019-06-24 13:49:49.680994+03
194	crowdfunding	0036_auto_20190625_0542	2019-06-25 05:42:54.193392+03
195	crowdfunding	0037_auto_20190625_0957	2019-06-25 09:57:51.024611+03
196	crowdfunding	0038_auto_20190625_1045	2019-06-25 10:45:40.817662+03
197	venturelift_profiles	0009_allsystemuser	2019-06-25 10:45:40.849825+03
198	crowdfunding	0039_auto_20190625_2102	2019-06-25 21:02:42.442572+03
199	venturelift_profiles	0010_auto_20190625_2102	2019-06-25 21:02:42.473597+03
200	crowdfunding	0040_auto_20190628_1658	2019-06-28 16:58:26.557623+03
201	venturelift_profiles	0011_auto_20190628_1658	2019-06-28 16:58:26.626163+03
202	crowdfunding	0041_auto_20190628_1708	2019-06-28 17:08:59.729281+03
203	crowdfunding	0042_auto_20190628_1724	2019-06-28 17:24:07.077098+03
204	knowledge_center	0001_initial	2019-06-28 18:01:37.689137+03
205	videomembership	0001_initial	2019-06-28 18:06:22.66618+03
206	crowdfunding	0043_auto_20190628_1806	2019-06-28 18:06:48.913262+03
207	crowdfunding	0044_auto_20190701_0937	2019-07-01 09:37:24.317129+03
208	knowledge_center	0002_auto_20190701_0937	2019-07-01 09:37:24.52733+03
209	venturelift_profiles	0012_auto_20190701_0937	2019-07-01 09:37:24.763344+03
210	venturelift_profiles	0013_auto_20190701_0944	2019-07-01 09:44:10.672583+03
211	venturelift_profiles	0014_auto_20190701_1006	2019-07-01 10:06:50.189248+03
212	venturelift_profiles	0015_remove_investorprofile_gender_lens_investor	2019-07-01 10:30:57.687147+03
213	venturelift_profiles	0016_auto_20190701_1043	2019-07-01 10:43:59.840812+03
214	venturelift_profiles	0017_auto_20190701_1236	2019-07-01 12:36:45.626562+03
215	venturelift_profiles	0018_auto_20190701_1252	2019-07-01 12:52:25.05461+03
216	crowdfunding	0045_campaign_minimum_donation	2019-07-01 13:32:04.721518+03
217	crowdfunding	0046_campaignpayment_payment_payer_id	2019-07-05 15:58:16.776903+03
218	crowdfunding	0047_mpesaapitoken_mpesastkpush	2019-07-10 12:20:15.119747+03
219	crowdfunding	0048_auto_20190710_1352	2019-07-10 13:52:37.93886+03
220	crowdfunding	0049_mpesastkresponse	2019-07-10 15:06:13.356271+03
221	crowdfunding	0050_mpesastkpush_checkoutid	2019-07-10 15:45:50.773514+03
222	knowledge_center	0003_auto_20190710_1646	2019-07-10 16:46:54.205591+03
223	videomembership	0002_auto_20190710_1646	2019-07-10 16:46:54.437813+03
224	crowdfunding	0051_auto_20190711_1317	2019-07-11 13:17:31.03328+03
225	venturelift_media	0002_auto_20190719_1711	2019-07-19 17:11:25.673146+03
226	events	0001_initial	2019-07-25 14:54:14.300119+03
227	venturelift_profiles	0019_auto_20190725_1513	2019-07-25 15:13:47.19593+03
228	venturelift_profiles	0020_auto_20190725_1533	2019-07-25 15:33:42.776834+03
229	venturelift_profiles	0021_auto_20190729_2253	2019-07-29 22:53:34.728191+03
230	venturelift_profiles	0022_auto_20190730_0939	2019-07-30 09:39:36.542176+03
231	venturelift_media	0003_auto_20190808_1610	2019-08-08 16:10:38.584938+03
232	venturelift_profiles	0023_surveyuser	2019-08-14 12:08:47.855937+03
233	venturelift_profiles	0024_auto_20190814_1213	2019-08-14 12:16:16.503351+03
234	venturelift_profiles	0025_auto_20190814_1422	2019-08-14 14:23:12.576704+03
235	venturelift_profiles	0026_auto_20190814_1423	2019-08-14 14:23:12.674526+03
236	venturelift_profiles	0027_auto_20190817_1808	2019-08-17 18:08:10.303322+03
237	venturelift_profiles	0028_auto_20190829_1643	2019-08-29 16:44:00.804402+03
238	venturelift_profiles	0029_remove_investorprofile_investor_forms	2019-08-29 17:11:11.2482+03
239	venturelift_profiles	0030_auto_20190901_1208	2019-09-01 12:08:45.189396+03
240	venturelift_profiles	0031_business_cropping	2019-09-09 15:49:58.697513+03
241	venturelift_profiles	0032_business_thumbnail_url	2019-09-09 16:00:30.260582+03
242	venturelift_profiles	0033_auto_20190909_1602	2019-09-09 16:02:52.407785+03
243	knowledge_center	0004_auto_20190919_1124	2019-09-19 11:24:47.91296+03
244	venturelift_profiles	0034_auto_20190919_1124	2019-09-19 11:24:48.0542+03
245	venturelift_profiles	0035_auto_20191013_1839	2019-10-13 18:40:07.93978+03
246	venturelift_profiles	0036_auto_20191025_1447	2019-10-25 14:47:09.358372+03
247	venturelift_profiles	0037_auto_20191025_1453	2019-10-25 14:54:02.658663+03
248	venturelift_profiles	0038_auto_20191126_1420	2019-11-26 14:20:50.342818+03
249	venturelift_profiles	0039_auto_20191126_1647	2019-11-26 16:47:24.957389+03
250	venturelift_profiles	0040_auto_20191126_1706	2019-11-26 17:07:03.728101+03
251	venturelift_profiles	0041_auto_20200206_2137	2020-02-06 21:38:10.652892+03
252	venturelift_profiles	0042_business_about	2020-04-20 13:58:45.260155+03
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
p8yu9hal0t95ffu76364mfqo9ohfi3pg	YzVjMmE2N2VjNjlmZmM5NjZiODM4ZTg2NDE0ZTBlYTMyZmE0NjU4MDp7Il9hdXRoX3VzZXJfaGFzaCI6IjU4NGM2MWQwMzIwMDBmYjQ5N2JlYzkwZDhkNDU0NjNmN2M2NmU2M2YiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=	2019-06-25 11:00:03.952898+03
7ss6mn7s7hc3ouyqcxpt4ebw1g2okd2k	YzVjMmE2N2VjNjlmZmM5NjZiODM4ZTg2NDE0ZTBlYTMyZmE0NjU4MDp7Il9hdXRoX3VzZXJfaGFzaCI6IjU4NGM2MWQwMzIwMDBmYjQ5N2JlYzkwZDhkNDU0NjNmN2M2NmU2M2YiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=	2019-06-26 12:13:30.443733+03
rcfm0pkvarohaejvpluay9lyug459hz8	NDI3N2UwNDBkYTczNWZkZDQyZmMwYWYwMjUwY2Y3ODRjZDRjMGEwZTp7fQ==	2019-07-06 14:48:38.76205+03
cg5v8lxkj915uizi5hqldv8eue29srxg	NDI3N2UwNDBkYTczNWZkZDQyZmMwYWYwMjUwY2Y3ODRjZDRjMGEwZTp7fQ==	2019-07-06 14:54:19.038879+03
yl2ol6c0womyq42fhy00gaa5jky0qp87	NDI3N2UwNDBkYTczNWZkZDQyZmMwYWYwMjUwY2Y3ODRjZDRjMGEwZTp7fQ==	2019-07-06 14:55:18.228869+03
kutat70bvlbgtxsnee1agl3wcj0gdq28	NDI3N2UwNDBkYTczNWZkZDQyZmMwYWYwMjUwY2Y3ODRjZDRjMGEwZTp7fQ==	2019-07-08 12:01:39.207011+03
xi1yko8o9z15zqk7chj5prhmbng4o25g	YzVjMmE2N2VjNjlmZmM5NjZiODM4ZTg2NDE0ZTBlYTMyZmE0NjU4MDp7Il9hdXRoX3VzZXJfaGFzaCI6IjU4NGM2MWQwMzIwMDBmYjQ5N2JlYzkwZDhkNDU0NjNmN2M2NmU2M2YiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=	2019-12-10 13:34:40.193184+03
52yf3f5nqw77w6fadhwz9bbs5t92kgdm	NzQxNzdmOTY4NWM1ZDdlMmUyZGVlODE1NWQxM2IzNGU0MWQxYjMxNzp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc1MzU5NzNhYWE3MDI3ZjdlOWQ5NzkxMDc5MDdjZGFkNDYyZmE0YTAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyNiJ9	2019-12-10 17:21:17.721377+03
167szq8sm9wtjq1odf8r796u4u5e37lm	N2U0ZDhkZGRjNDQ0Y2RjYWNlNWE2NDFjNzdiYjBmMzU5YjYyYTIyMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImU1ZjljYzRjYzlhOWJjZjFmMjk0YzMxM2NiN2QzMDU3M2FjN2NiZWYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=	2020-02-10 12:18:40.530951+03
xo4cnle3pienos15pys2pl5hd2e885c3	N2U0ZDhkZGRjNDQ0Y2RjYWNlNWE2NDFjNzdiYjBmMzU5YjYyYTIyMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImU1ZjljYzRjYzlhOWJjZjFmMjk0YzMxM2NiN2QzMDU3M2FjN2NiZWYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=	2020-03-07 16:02:54.536544+03
lhdd7p6sfh6gblqyvzkdydojmshnnn1n	N2U0ZDhkZGRjNDQ0Y2RjYWNlNWE2NDFjNzdiYjBmMzU5YjYyYTIyMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImU1ZjljYzRjYzlhOWJjZjFmMjk0YzMxM2NiN2QzMDU3M2FjN2NiZWYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=	2020-04-13 20:41:10.372961+03
1knrci98fttrgqwqp0swbj4m16f4mc5x	YzVjMmE2N2VjNjlmZmM5NjZiODM4ZTg2NDE0ZTBlYTMyZmE0NjU4MDp7Il9hdXRoX3VzZXJfaGFzaCI6IjU4NGM2MWQwMzIwMDBmYjQ5N2JlYzkwZDhkNDU0NjNmN2M2NmU2M2YiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=	2020-04-13 20:50:16.362986+03
b3y42nnawoill7kt6anhdq7g80pbr4v9	MDgyMjJlMmFlZDdkY2ZlNGU1MjA4NjYxYzg0ZjRmNGE5YzFkYzUzZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjU5YzY1NjBiZWI5NmU4ZWVlODFkYjI5NDRkZjRhOTJlMGU3ZDg2N2IiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=	2020-04-13 20:55:09.682182+03
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.django_site (id, domain, name) FROM stdin;
1	example.com	example.com
\.


--
-- Data for Name: djangocms_column_column; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.djangocms_column_column (cmsplugin_ptr_id, width) FROM stdin;
\.


--
-- Data for Name: djangocms_column_multicolumns; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.djangocms_column_multicolumns (cmsplugin_ptr_id) FROM stdin;
\.


--
-- Data for Name: djangocms_file_file; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.djangocms_file_file (cmsplugin_ptr_id, file_name, link_target, link_title, file_src_id, attributes, template, show_file_size) FROM stdin;
\.


--
-- Data for Name: djangocms_file_folder; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.djangocms_file_folder (template, link_target, show_file_size, attributes, cmsplugin_ptr_id, folder_src_id) FROM stdin;
\.


--
-- Data for Name: djangocms_googlemap_googlemap; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.djangocms_googlemap_googlemap (cmsplugin_ptr_id, title, zoom, lat, lng, width, height, scrollwheel, double_click_zoom, draggable, keyboard_shortcuts, pan_control, zoom_control, street_view_control, style, fullscreen_control, map_type_control, rotate_control, scale_control, template) FROM stdin;
\.


--
-- Data for Name: djangocms_googlemap_googlemapmarker; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.djangocms_googlemap_googlemapmarker (cmsplugin_ptr_id, title, address, lat, lng, show_content, info_content, icon_id) FROM stdin;
\.


--
-- Data for Name: djangocms_googlemap_googlemaproute; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.djangocms_googlemap_googlemaproute (cmsplugin_ptr_id, title, origin, destination, travel_mode) FROM stdin;
\.


--
-- Data for Name: djangocms_link_link; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.djangocms_link_link (cmsplugin_ptr_id, name, external_link, anchor, mailto, phone, target, internal_link_id, attributes, template) FROM stdin;
\.


--
-- Data for Name: djangocms_picture_picture; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.djangocms_picture_picture (cmsplugin_ptr_id, link_url, alignment, link_page_id, height, width, picture_id, attributes, caption_text, link_attributes, link_target, use_automatic_scaling, use_crop, use_no_cropping, use_upscale, thumbnail_options_id, external_picture, template, use_responsive_image) FROM stdin;
\.


--
-- Data for Name: djangocms_snippet_snippet; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.djangocms_snippet_snippet (id, name, html, template, slug) FROM stdin;
1	video	<iframe width="560" height="315" src="https://www.youtube.com/embed/ThH2Q-i3FHM" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>		video
\.


--
-- Data for Name: djangocms_snippet_snippetptr; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.djangocms_snippet_snippetptr (cmsplugin_ptr_id, snippet_id) FROM stdin;
1	1
2	1
\.


--
-- Data for Name: djangocms_style_style; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.djangocms_style_style (cmsplugin_ptr_id, class_name, tag_type, padding_left, padding_right, padding_top, padding_bottom, margin_left, margin_right, margin_top, margin_bottom, additional_classes, attributes, id_name, label, template) FROM stdin;
\.


--
-- Data for Name: djangocms_text_ckeditor_text; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.djangocms_text_ckeditor_text (cmsplugin_ptr_id, body) FROM stdin;
\.


--
-- Data for Name: djangocms_video_videoplayer; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.djangocms_video_videoplayer (cmsplugin_ptr_id, embed_link, poster_id, attributes, label, template, parameters) FROM stdin;
\.


--
-- Data for Name: djangocms_video_videosource; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.djangocms_video_videosource (cmsplugin_ptr_id, text_title, text_description, attributes, source_file_id) FROM stdin;
\.


--
-- Data for Name: djangocms_video_videotrack; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.djangocms_video_videotrack (cmsplugin_ptr_id, kind, srclang, label, attributes, src_id) FROM stdin;
\.


--
-- Data for Name: easy_thumbnails_source; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.easy_thumbnails_source (id, storage_hash, name, modified) FROM stdin;
1	f9bde26a1556cd667f742bd34ec7c55e	filer_public/46/22/4622fccb-2f8f-41de-976b-9553bdd4502a/finance_tz.payment-12-associated_documents	2019-07-19 17:09:48.596155+03
2	f9bde26a1556cd667f742bd34ec7c55e	pic_folder/company-logo.png	2019-09-09 16:00:39.154175+03
\.


--
-- Data for Name: easy_thumbnails_thumbnail; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.easy_thumbnails_thumbnail (id, storage_hash, name, modified, source_id) FROM stdin;
1	d26becbf46ac48eda79c7a39a13a02dd	pic_folder/company-logo.png.430x360_q85_crop_detail.jpg	2019-09-09 16:00:39.158539+03	2
\.


--
-- Data for Name: easy_thumbnails_thumbnaildimensions; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.easy_thumbnails_thumbnaildimensions (id, thumbnail_id, width, height) FROM stdin;
\.


--
-- Data for Name: events_attendees; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.events_attendees (id, registration_date, attendee_id, event_id) FROM stdin;
\.


--
-- Data for Name: events_eventcategory; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.events_eventcategory (id, title, date, published, author_id) FROM stdin;
\.


--
-- Data for Name: events_events; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.events_events (id, title, published, description, start_date, end_date, location, date, registration_url, registration_required, event_banner, author_id, category_id) FROM stdin;
\.


--
-- Data for Name: events_networkevents; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.events_networkevents (id, title, published, organization_name, description, start_date, end_date, location, date, registration_url, registration_required, event_banner, author_id, category_id) FROM stdin;
\.


--
-- Data for Name: filer_clipboard; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.filer_clipboard (id, user_id) FROM stdin;
1	3
\.


--
-- Data for Name: filer_clipboarditem; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.filer_clipboarditem (id, clipboard_id, file_id) FROM stdin;
\.


--
-- Data for Name: filer_file; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.filer_file (id, file, _file_size, sha1, has_all_mandatory_data, original_filename, name, description, uploaded_at, modified_at, is_public, folder_id, owner_id, polymorphic_ctype_id) FROM stdin;
1	filer_public/46/22/4622fccb-2f8f-41de-976b-9553bdd4502a/finance_tz.payment-12-associated_documents	15862	b0e949780997f5975aa10985428a78fd06a19e29	f	finance_tz.payment-12-associated_documents		\N	2019-07-19 17:09:48.600657+03	2019-07-19 17:09:48.600677+03	t	\N	3	27
\.


--
-- Data for Name: filer_folder; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.filer_folder (id, name, uploaded_at, created_at, modified_at, lft, rght, tree_id, level, owner_id, parent_id) FROM stdin;
\.


--
-- Data for Name: filer_folderpermission; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.filer_folderpermission (id, type, everybody, can_edit, can_read, can_add_children, folder_id, group_id, user_id) FROM stdin;
\.


--
-- Data for Name: filer_image; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.filer_image (file_ptr_id, _height, _width, date_taken, default_alt_text, default_caption, author, must_always_publish_author_credit, must_always_publish_copyright, subject_location) FROM stdin;
\.


--
-- Data for Name: filer_thumbnailoption; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.filer_thumbnailoption (id, name, width, height, crop, upscale) FROM stdin;
\.


--
-- Data for Name: jet_bookmark; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.jet_bookmark (id, url, title, "user", date_add) FROM stdin;
\.


--
-- Data for Name: jet_pinnedapplication; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.jet_pinnedapplication (id, app_label, "user", date_add) FROM stdin;
\.


--
-- Data for Name: knowledge_center_audiovisual; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.knowledge_center_audiovisual (id, title, date, path, category, published, payment_status, description, author, sub_category_id, created_by_id, thumbnail_image, video_file) FROM stdin;
\.


--
-- Data for Name: knowledge_center_documentcategory; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.knowledge_center_documentcategory (id, title, date, published, author_id) FROM stdin;
1	Trends	2019-07-19 16:25:05.702507+03	t	3
\.


--
-- Data for Name: knowledge_center_subdocumentcategory; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.knowledge_center_subdocumentcategory (id, title, date, published, author_id, category_id) FROM stdin;
\.


--
-- Data for Name: knowledge_center_textcenter; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.knowledge_center_textcenter (id, title, published, description, date, payment_status, file_upload, author, category_id, sub_category_id, created_by_id, external_url) FROM stdin;
\.


--
-- Data for Name: knowledge_center_videocategory; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.knowledge_center_videocategory (id, title, date, published, author_id) FROM stdin;
\.


--
-- Data for Name: menus_cachekey; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.menus_cachekey (id, language, site, key) FROM stdin;
11	en	1	cms_3.5.3_menu_nodes_en_1_3_user:draft
12	en	1	cms_3.5.3_menu_nodes_en_1:public
13	en	1	cms_3.5.3_menu_nodes_en_1_2_user:public
14	en	1	cms_3.5.3_menu_nodes_en_1_13_user:public
\.


--
-- Data for Name: social_auth_association; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.social_auth_association (id, server_url, handle, secret, issued, lifetime, assoc_type) FROM stdin;
\.


--
-- Data for Name: social_auth_code; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.social_auth_code (id, email, code, verified, "timestamp") FROM stdin;
\.


--
-- Data for Name: social_auth_nonce; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.social_auth_nonce (id, server_url, "timestamp", salt) FROM stdin;
\.


--
-- Data for Name: social_auth_partial; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.social_auth_partial (id, token, next_step, backend, data, "timestamp") FROM stdin;
\.


--
-- Data for Name: social_auth_usersocialauth; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.social_auth_usersocialauth (id, provider, uid, extra_data, user_id) FROM stdin;
\.


--
-- Data for Name: venturelift_media_audiovisual; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.venturelift_media_audiovisual (id, title, date, path, vla_tv, category, author_id, sub_category_id, priority) FROM stdin;
2	Trial 2	2019-07-26 12:10:45.04583+03	<iframe width="100%" height="166" scrolling="no" frameborder="no" allow="autoplay" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/591873000&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true"></iframe>	f	Podcast	3	1	f
1	Trial 1	2019-07-26 12:10:18.796672+03	<iframe width="560" height="315" src="https://www.youtube.com/embed/g6q0HYaBq1k" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>	t	Video	3	1	f
\.


--
-- Data for Name: venturelift_media_category; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.venturelift_media_category (id, title, author_id) FROM stdin;
1	Diaspora	3
2	More Stories	3
\.


--
-- Data for Name: venturelift_media_newsletter; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.venturelift_media_newsletter (id, title, body, recipients, date) FROM stdin;
\.


--
-- Data for Name: venturelift_media_subscription; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.venturelift_media_subscription (id, email, is_active) FROM stdin;
\.


--
-- Data for Name: venturelift_media_textmedia; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.venturelift_media_textmedia (id, title, body, date, author_id, category_id, thumbnail_image, priority) FROM stdin;
1	earth	<p>Me</p>	2019-07-19 17:12:27.504932+03	3	1	pic_folder/splash.png	t
\.


--
-- Data for Name: venturelift_profiles_allsystemuser; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.venturelift_profiles_allsystemuser (id, created_at, username, email, user_type) FROM stdin;
1	2019-06-25 10:56:18.215383+03	tryfiana02	bronsky031@gmail.com	Investor
2	2019-06-25 14:33:31.179159+03	tryfiana06		Business
3	2019-06-25 15:57:00.771599+03	tryfiana@gmail.com	tryfiana@gmail.com	Crowdfunder
\.


--
-- Data for Name: venturelift_profiles_business; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.venturelift_profiles_business (id, name, size, thumbnail_image, company_primary_email, company_website, address, year_of_company_registration, value_proposition_statement, full_time_employee_count, verified, creator_id, sector_id, verified_by_id, gender, sample_profile, about) FROM stdin;
3	Xero1	Startup		tryfiana@gmail.com	http://xero.com	KE	2006		12	f	7	1	\N	Other	f	\N
1	xero	Startup	pic_folder/company-logo.png	wachirafiona@gmail.com	http://xero.com	KE	2018	IT	2	t	2	1	3	Male	f	\N
2	Xero1	Startup		tryfiana@gmail.com	http://xero.com	KE	2006	me	12	f	7	1	\N	Other	f	\N
\.


--
-- Data for Name: venturelift_profiles_businesscategory; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.venturelift_profiles_businesscategory (id, name, added_by_id) FROM stdin;
1	IT	1
\.


--
-- Data for Name: venturelift_profiles_businessconnectrequest; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.venturelift_profiles_businessconnectrequest (id, created_at, approval_status, approved, rejected, approved_by_id, business_id, investor_id, rejected_by_id) FROM stdin;
1	2019-07-01 12:52:49.74825+03	PENDING	f	f	\N	1	2	\N
\.


--
-- Data for Name: venturelift_profiles_businessfinancial; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.venturelift_profiles_businessfinancial (id, last_year_revenue, last_year_profit, growth_margin, company_name_id) FROM stdin;
2	\N	\N	\N	2
1	1000000	100000	12	1
\.


--
-- Data for Name: venturelift_profiles_businessgoals; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.venturelift_profiles_businessgoals (id, three_year_targeted_revenue, constraints_to_growth, company_name_id) FROM stdin;
2	\N	\N	2
1	1	1	1
\.


--
-- Data for Name: venturelift_profiles_businessgoals_primary_services_interes3068; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.venturelift_profiles_businessgoals_primary_services_interes3068 (id, businessgoals_id, vlaservices_id) FROM stdin;
\.


--
-- Data for Name: venturelift_profiles_businessgoals_secondary_services_inter2394; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.venturelift_profiles_businessgoals_secondary_services_inter2394 (id, businessgoals_id, vlaservices_id) FROM stdin;
\.


--
-- Data for Name: venturelift_profiles_businessinvestment; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.venturelift_profiles_businessinvestment (id, funding_source, personal_funds_invested, external_funds_invested, capital_to_raise, company_name_id) FROM stdin;
2	\N	\N	\N	\N	2
1	business revenue	500000	100000	1200000	1
\.


--
-- Data for Name: venturelift_profiles_businessmodel; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.venturelift_profiles_businessmodel (id, business_model, competitors, competitive_advantage, intellectual_property_info, company_name_id) FROM stdin;
2	\N	\N	\N	\N	2
1	I	I	I	I	1
\.


--
-- Data for Name: venturelift_profiles_businessteam; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.venturelift_profiles_businessteam (id, founders_info, team_roles_and_structure, board_of_advisors, board_of_directors, company_name_id) FROM stdin;
2	\N	\N	\N	\N	2
1	i	i	i	i	1
\.


--
-- Data for Name: venturelift_profiles_investor; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.venturelift_profiles_investor (id, about, thumbnail_image, phone_number, company, role, company_location, physical_address, company_website, company_registration_year, verified, user_id, verified_by_id, gender, sample_profile, funder_type) FROM stdin;
3	me		711836370	Ayeba Market	Ayeba Market	BH	80100	http://xero.com	1977	f	8	\N	Other	f	\N
4	r	pic_folder/pexels-photo-248797_gXEupR4.jpeg	711836370	Ayeba Market	Ayeba Market	AZ	80100	http://xero.com	1975	f	13	\N	Other	f	\N
5	me		711836370	me	Ayeba Market	BH	80100	http://xero.com	1977	t	14	3	Other	f	\N
12	e	pic_folder/cabbage_qRw07lG.jpg	711836370	Ayeba Market	Developer	BF	Ruaka, Nairobi, Ruaka	http://xero.com	1976	f	15	\N	Other	f	\N
2	i	pic_folder/pexels-photo-248797_HFTh7ee.jpeg	711836370	Ayeba Market	Developer	KE	Ruaka, Nairobi	http://xero.com	1961	t	12	\N	Other	f	\N
13	hi	pic_folder/shoes.png	0711836370	Ace Inc	CEO	KE	Nairobi	www.ace.com	2002	f	17	\N	Female	f	\N
1	Tryfiana Funder	pic_folder/image5_j6d2pVO.jpeg	0711836370	Xero	Developer	KE	Ruaka, Nairobi	http://xero.com	\N	t	4	\N	Other	f	\N
14		pic_folder/team3.png	0789876543	\N	\N	\N	\N	\N	\N	f	23	\N	Female	f	Crowdfunder
15	ok		0789876541	my	CEO	AZ	Nai	my.com	1977	f	24	\N	Male	f	Investor
16	ok	pic_folder/team1.png	0718373663	ok	ok	DZ	ok	ok.com	1964	f	25	\N	Female	f	Lender
17	ok	pic_folder/profile.png	0719276578	okk	kk	AT	kk	okk	1975	f	26	\N	Male	f	Grantor
\.


--
-- Data for Name: venturelift_profiles_investorconnectrequest; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.venturelift_profiles_investorconnectrequest (id, created_at, approval_status, approved, rejected, approved_by_id, investor_id, rejected_by_id, requestor_id) FROM stdin;
1	2019-07-01 12:54:04.62107+03	APPROVE	t	f	3	5	\N	2
2	2019-07-12 12:22:53.636685+03	PENDING	f	f	\N	5	\N	2
3	2019-10-25 14:54:45.737243+03	PENDING	f	f	\N	1	\N	4
\.


--
-- Data for Name: venturelift_profiles_investorprofile; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.venturelift_profiles_investorprofile (id, target_countries, elevator_pitch, managed_funds, assets_under_management, investor_portfolio, exits_executed, impact_investor, impact_measurement, impact_metrics, investor_profile_id, funder_type, investment_product, investment_type, active_loans, average_payback, collateral_list, grant_amount, grants_list, interest_rate, loan_approval_process, loan_book, npl_percentage, prior_donations, reason_for_support, rfp_list, target_recepients) FROM stdin;
2		\N	\N	\N	\N	\N	\N	\N	\N	2	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3	rwanda	e	1-5	<usd 1M	< 5	none	yes	giin iris	n	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4		\N	\N	\N	\N	\N	\N	\N	\N	4	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5		\N	\N	\N	\N	\N	\N	\N	\N	4	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
6	rwanda	j	1	<usd 1M	< 5	none	yes	giin iris	m	5	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
13	uganda	ee	1-5	usd 10 - 50	< 5	none	yes	giin iris	dd	12	Crowdfunder	Donation	Donator	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
14	Kenya	you	1-5	<usd 1M	< 5	< 5	yes	giin iris	you	13	Grantor	Grants	Grantor	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1	Egypt,Angola	h h hj  j  j j hj h  n m k jn n  n  h j hj	Less than $500,000	\N	< 5	none	yes	giin iris	kj iu u h uh uh	1	Crowdfunder	Donation	Donor	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
16		\N	\N	\N	\N	\N	\N	\N	\N	14	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
17		\N	\N	\N	\N	\N	\N	\N	\N	14	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
18		\N	\N	\N	\N	\N	\N	\N	\N	14	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
19		\N	\N	\N	\N	\N	\N	\N	\N	14	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
20		\N	\N	\N	\N	\N	\N	\N	\N	14	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
21		\N	\N	\N	\N	\N	\N	\N	\N	14	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
22		\N	\N	\N	\N	\N	\N	\N	\N	14	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
23		\N	\N	\N	\N	\N	\N	\N	\N	14	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
24		\N	\N	\N	\N	\N	\N	\N	\N	14	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
25		\N	\N	\N	\N	\N	\N	\N	\N	14	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
26		\N	\N	\N	\N	\N	\N	\N	\N	14	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
27		\N	\N	\N	\N	\N	\N	\N	\N	14	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
28		\N	\N	\N	\N	\N	\N	\N	\N	14	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
15			\N	\N	\N	\N		\N		14	Crowdfunder	Donation	Donor	\N	1 month		\N		\N		\N		ok	ok		
29	Kenya	ok	\N	<USD 1M	< 5	< 5	yes	giin iris	ok	15	Investor			\N	1 month		\N		\N		\N					
30	South Africa	ok	$2million to $5 million	\N	\N	\N		\N		16	Lender	Subordinated	Lender	4	2-3 months	6g	\N		4.5	7y	ok	7y				
31	South Africa,Ethiopia		\N	\N	\N	\N		\N		17	Grantor	Grants	Grantor	\N	1 month		1000	k	\N		\N				k	k
\.


--
-- Data for Name: venturelift_profiles_investorprofile_target_sectors; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.venturelift_profiles_investorprofile_target_sectors (id, investorprofile_id, businesscategory_id) FROM stdin;
1	1	1
2	3	1
3	6	1
\.


--
-- Data for Name: venturelift_profiles_marketdescription; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.venturelift_profiles_marketdescription (id, product_offering, market_segment, needs_fulfilled_by_product, market_size, company_name_id) FROM stdin;
2	\N	\N	\N	\N	2
1	Software	IT	Software needs	1billion	1
\.


--
-- Data for Name: venturelift_profiles_post; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.venturelift_profiles_post (id, title, body, date, company_id, investor_author_id, supporter_author_id, file_name, blog_type) FROM stdin;
1	earth	ef fe frf fr	2019-06-19 02:04:31.926298+03	1	\N	\N	pic_folder/image5_FyiQ98w.jpeg	Business Plans
\.


--
-- Data for Name: venturelift_profiles_post_likes; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.venturelift_profiles_post_likes (id, post_id, user_id) FROM stdin;
\.


--
-- Data for Name: venturelift_profiles_supporter; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.venturelift_profiles_supporter (id, thumbnail_image, phone_number, about, company, role, company_operations, company_website, company_registration_year, verified, user_id, verified_by_id, gender, sample_profile) FROM stdin;
1	pic_folder/books.png	0711836370	me	Ace LTD	CEO	KE	www.ace.com	2010	t	18	\N	Female	f
\.


--
-- Data for Name: venturelift_profiles_supporterconnectrequest; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.venturelift_profiles_supporterconnectrequest (id, created_at, approval_status, approved, rejected, approved_by_id, rejected_by_id, requestor_id, supporter_id) FROM stdin;
\.


--
-- Data for Name: venturelift_profiles_supporterprofile; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.venturelift_profiles_supporterprofile (id, supporter_interest, interest_startups, interest_countries, trading_partners, supporter_profile_id) FROM stdin;
1	Trade	SME	Kenya		1
\.


--
-- Data for Name: venturelift_profiles_supporterprofile_interest_sectors; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.venturelift_profiles_supporterprofile_interest_sectors (id, supporterprofile_id, businesscategory_id) FROM stdin;
1	1	1
\.


--
-- Data for Name: venturelift_profiles_surveyuser; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.venturelift_profiles_surveyuser (id, from_time, to_time, user_id, active) FROM stdin;
1	2019-08-14 12:16:41+03	2019-08-14 12:24:00+03	15	f
\.


--
-- Data for Name: venturelift_profiles_trackinguser; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.venturelift_profiles_trackinguser (id, access_time, action_name, user_details_id) FROM stdin;
1	2019-06-19 03:01:26.169369+03	login	2
2	2019-06-19 03:05:02.176808+03	login	4
3	2019-06-24 12:02:51.926792+03	login	2
4	2019-06-24 12:11:15.114196+03	register	7
5	2019-06-24 13:29:23.478074+03	login	2
6	2019-06-24 14:27:23.57486+03	login	4
7	2019-06-24 17:36:11.273713+03	login	2
8	2019-06-25 05:00:19.519452+03	login	2
9	2019-06-25 09:59:15.373162+03	register	12
10	2019-06-25 10:28:40.097025+03	login	4
11	2019-06-25 10:50:31.919377+03	login	4
12	2019-06-25 10:52:18.465723+03	login	4
13	2019-06-25 10:56:18.204607+03	login	4
14	2019-06-25 14:07:13.964944+03	login	4
15	2019-06-25 14:20:22.400077+03	login	4
16	2019-06-25 14:21:51.269127+03	register	1
17	2019-06-25 14:23:43.107708+03	register	1
18	2019-06-25 14:30:48.924438+03	register	1
19	2019-06-25 14:31:08.711484+03	register	7
20	2019-06-25 14:33:31.164751+03	login	2
21	2019-06-25 16:12:47.376474+03	login	2
22	2019-06-25 16:44:53.171953+03	register	7
23	2019-06-25 20:20:19.419061+03	login	2
24	2019-06-25 20:37:17.326481+03	login	2
25	2019-06-25 20:44:13.475837+03	login	2
26	2019-06-25 20:44:25.707201+03	login	2
27	2019-06-25 20:57:30.978523+03	login	2
28	2019-06-25 20:57:33.857828+03	login	2
29	2019-06-25 21:08:51.005991+03	login	2
30	2019-06-25 21:09:43.488345+03	login	2
31	2019-06-25 21:11:24.208937+03	login	2
32	2019-06-27 15:42:07.189603+03	login	7
33	2019-06-27 15:43:35.442681+03	register	8
34	2019-06-27 15:44:11.461965+03	register	8
35	2019-06-27 16:36:12.684005+03	register	8
36	2019-06-27 16:50:05.652066+03	login	12
37	2019-06-27 16:51:23.835902+03	register	13
38	2019-06-27 17:02:20.837787+03	login	2
39	2019-06-27 17:03:36.259008+03	login	2
40	2019-06-27 17:04:22.65507+03	login	2
41	2019-06-27 17:04:24.972135+03	login	2
42	2019-06-28 10:45:59.941207+03	login	2
43	2019-06-28 17:31:04.957224+03	register	14
44	2019-06-28 17:52:50.567879+03	login	2
45	2019-06-28 17:55:27.476981+03	login	2
46	2019-06-28 17:56:02.091689+03	register	14
47	2019-06-28 17:57:09.175493+03	login	2
48	2019-06-28 17:58:12.853806+03	login	14
49	2019-06-28 18:07:12.379005+03	login	2
50	2019-07-01 09:38:07.001879+03	login	4
51	2019-07-01 09:39:25.833906+03	register	15
52	2019-07-01 09:42:02.089557+03	register	15
53	2019-07-01 09:44:26.797737+03	register	15
54	2019-07-01 10:07:05.809652+03	login	15
55	2019-07-01 10:08:12.557867+03	register	15
56	2019-07-01 10:11:01.722945+03	register	15
57	2019-07-01 10:21:06.018064+03	register	15
58	2019-07-01 10:31:34.711214+03	register	15
59	2019-07-01 10:44:43.345208+03	register	15
60	2019-07-01 10:50:01.57471+03	register	15
61	2019-07-01 11:56:09.325477+03	login	2
62	2019-07-01 12:52:41.014534+03	login	2
63	2019-07-01 13:07:44.626512+03	login	2
64	2019-07-01 13:10:37.733211+03	login	4
65	2019-07-01 13:13:47.096581+03	login	4
66	2019-07-12 12:22:40.948479+03	login	2
67	2019-07-25 13:43:08.771494+03	login	2
68	2019-07-25 13:44:53.5951+03	register	16
69	2019-07-25 13:45:35.031004+03	login	2
70	2019-07-25 13:46:25.967758+03	login	4
71	2019-07-25 13:50:58.702688+03	login	4
72	2019-07-25 13:52:33.106622+03	login	4
73	2019-07-25 13:53:37.738741+03	login	4
74	2019-07-25 13:55:06.178089+03	login	4
75	2019-07-25 13:56:11.294622+03	login	4
76	2019-07-25 13:59:12.77852+03	login	4
77	2019-07-25 13:59:15.918468+03	login	4
78	2019-07-25 14:01:20.119848+03	login	4
79	2019-07-25 14:39:07.439373+03	login	4
80	2019-07-25 14:40:47.920656+03	login	2
81	2019-07-25 14:41:18.973246+03	login	2
82	2019-07-25 14:41:48.147229+03	login	2
83	2019-07-25 14:42:25.56582+03	login	4
84	2019-07-25 14:43:06.021291+03	login	4
85	2019-07-25 14:44:21.239399+03	login	2
86	2019-07-25 14:44:42.591199+03	login	2
87	2019-07-25 14:46:39.408525+03	login	2
88	2019-07-25 14:46:47.858643+03	login	4
89	2019-07-25 14:47:11.209015+03	login	4
90	2019-07-25 15:12:16.872851+03	login	4
91	2019-07-25 15:31:33.465276+03	login	4
92	2019-07-25 15:33:50.150647+03	login	4
93	2019-07-25 15:34:21.98455+03	login	4
94	2019-07-29 23:21:56.497995+03	login	2
95	2019-07-29 23:23:18.406591+03	login	4
96	2019-07-29 23:23:44.044899+03	login	4
97	2019-07-29 23:24:03.688748+03	login	4
98	2019-07-29 23:24:16.580913+03	login	4
99	2019-07-29 23:24:30.315535+03	login	4
100	2019-07-29 23:24:43.043855+03	login	4
101	2019-07-29 23:27:49.277147+03	login	4
102	2019-07-29 23:32:12.598285+03	login	4
103	2019-07-29 23:32:39.453657+03	register	16
104	2019-07-29 23:34:04.501811+03	login	2
105	2019-07-29 23:41:06.209119+03	login	2
106	2019-07-29 23:42:45.185703+03	login	2
107	2019-07-30 00:15:25.391702+03	login	2
108	2019-07-30 00:15:28.413296+03	login	2
109	2019-07-30 09:52:21.466949+03	login	2
110	2019-07-30 09:52:47.349163+03	login	2
111	2019-07-31 18:54:41.012339+03	login	2
112	2019-08-08 16:57:30.414149+03	login	2
113	2019-08-17 18:08:46.830798+03	login	2
114	2019-08-17 18:12:19.735674+03	login	4
115	2019-08-17 18:13:49.347383+03	login	2
116	2019-08-17 18:14:09.618748+03	login	2
117	2019-08-17 18:14:29.375221+03	login	2
118	2019-08-19 16:54:50.738679+03	login	13
119	2019-08-21 13:23:46.612443+03	login	2
120	2019-08-29 16:44:09.357799+03	login	2
121	2019-08-29 16:47:39.535252+03	login	4
122	2019-08-29 17:45:02.013463+03	login	4
123	2019-08-29 18:08:23.955431+03	login	4
124	2019-09-01 12:04:54.548878+03	register	17
125	2019-09-01 12:09:03.021932+03	login	17
126	2019-09-01 12:14:00.287388+03	register	18
127	2019-09-01 12:15:35.74367+03	login	18
128	2019-09-01 12:20:32.21392+03	login	18
129	2019-09-01 12:20:50.73043+03	login	18
130	2019-09-01 12:21:32.961303+03	login	18
131	2019-09-09 15:54:22.097298+03	login	2
132	2019-10-13 18:40:56.354479+03	login	2
133	2019-10-25 13:10:47.945327+03	login	4
134	2019-10-25 13:11:27.076943+03	login	7
135	2019-10-25 13:13:30.586032+03	login	18
136	2019-10-25 14:47:34.426792+03	login	4
137	2019-10-25 14:48:06.685453+03	login	4
138	2019-10-25 14:52:37.393766+03	login	4
139	2019-10-25 15:05:28.823097+03	login	4
140	2019-10-25 15:05:43.701553+03	login	4
141	2019-10-25 15:06:11.688932+03	login	18
142	2019-11-26 13:38:05.438566+03	login	4
143	2019-11-26 13:38:34.143973+03	login	4
144	2019-11-26 14:23:41.765595+03	login	4
145	2019-11-26 14:45:14.259683+03	register	23
146	2019-11-26 17:07:51.496726+03	login	23
147	2019-11-26 17:10:23.044437+03	register	24
148	2019-11-26 17:13:51.048119+03	login	24
149	2019-11-26 17:14:39.277319+03	login	24
150	2019-11-26 17:15:51.06579+03	register	25
151	2019-11-26 17:17:26.201694+03	login	25
152	2019-11-26 17:21:17.759316+03	register	26
153	2019-11-26 17:22:21.864801+03	login	26
154	2020-01-27 12:18:40.573536+03	login	2
155	2020-02-01 22:01:23.161942+03	login	2
156	2020-02-22 16:02:54.578602+03	login	2
157	2020-03-30 20:55:09.727639+03	login	4
158	2020-03-30 20:58:23.384315+03	login	4
\.


--
-- Data for Name: venturelift_profiles_vlaservices; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.venturelift_profiles_vlaservices (id, name, added_by_id) FROM stdin;
\.


--
-- Data for Name: videomembership_membership; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.videomembership_membership (id, slug, membership_type, price, payment_plan, type_membership_id) FROM stdin;
\.


--
-- Data for Name: videomembership_membershiptype; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.videomembership_membershiptype (id, title, number_of_videos) FROM stdin;
\.


--
-- Data for Name: videomembership_subscription; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.videomembership_subscription (id, payment_subscription_plan, active, user_membership_id) FROM stdin;
\.


--
-- Data for Name: videomembership_usermembership; Type: TABLE DATA; Schema: public; Owner: venture
--

COPY public.videomembership_usermembership (id, payment_user_plan, membership_id, user_id) FROM stdin;
1	new_payment_plan	\N	2
2	new_payment_plan	\N	4
3	new_payment_plan	\N	15
4	new_payment_plan	\N	3
5	new_payment_plan	\N	16
6	new_payment_plan	\N	13
7	new_payment_plan	\N	17
8	new_payment_plan	\N	18
9	new_payment_plan	\N	19
10	new_payment_plan	\N	20
11	new_payment_plan	\N	7
12	new_payment_plan	\N	21
13	new_payment_plan	\N	22
14	new_payment_plan	\N	23
15	new_payment_plan	\N	24
16	new_payment_plan	\N	25
17	new_payment_plan	\N	26
\.


--
-- Name: actstream_action_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.actstream_action_id_seq', 11, true);


--
-- Name: actstream_follow_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.actstream_follow_id_seq', 11, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 326, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 26, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: cms_cmsplugin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.cms_cmsplugin_id_seq', 2, true);


--
-- Name: cms_globalpagepermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.cms_globalpagepermission_id_seq', 1, false);


--
-- Name: cms_globalpagepermission_sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.cms_globalpagepermission_sites_id_seq', 1, false);


--
-- Name: cms_page_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.cms_page_id_seq', 9, true);


--
-- Name: cms_page_placeholders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.cms_page_placeholders_id_seq', 9, true);


--
-- Name: cms_pagepermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.cms_pagepermission_id_seq', 1, false);


--
-- Name: cms_placeholder_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.cms_placeholder_id_seq', 12, true);


--
-- Name: cms_staticplaceholder_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.cms_staticplaceholder_id_seq', 1, true);


--
-- Name: cms_title_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.cms_title_id_seq', 9, true);


--
-- Name: cms_treenode_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.cms_treenode_id_seq', 5, true);


--
-- Name: cms_urlconfrevision_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.cms_urlconfrevision_id_seq', 1, false);


--
-- Name: cms_usersettings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.cms_usersettings_id_seq', 1, true);


--
-- Name: crowdfunding_campaign_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.crowdfunding_campaign_id_seq', 26, true);


--
-- Name: crowdfunding_campaignconfiguration_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.crowdfunding_campaignconfiguration_id_seq', 1, true);


--
-- Name: crowdfunding_campaigndisbursement_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.crowdfunding_campaigndisbursement_id_seq', 10, true);


--
-- Name: crowdfunding_campaignpayment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.crowdfunding_campaignpayment_id_seq', 52, true);


--
-- Name: crowdfunding_campaignreward_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.crowdfunding_campaignreward_id_seq', 4, true);


--
-- Name: crowdfunding_campaignsector_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.crowdfunding_campaignsector_id_seq', 3, true);


--
-- Name: crowdfunding_mpesaapitoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.crowdfunding_mpesaapitoken_id_seq', 3, true);


--
-- Name: crowdfunding_mpesac2bnotification_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.crowdfunding_mpesac2bnotification_id_seq', 6, true);


--
-- Name: crowdfunding_mpesac2bregister_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.crowdfunding_mpesac2bregister_id_seq', 1, false);


--
-- Name: crowdfunding_mpesastkpush_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.crowdfunding_mpesastkpush_id_seq', 23, true);


--
-- Name: crowdfunding_mpesastkresponse_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.crowdfunding_mpesastkresponse_id_seq', 9, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 56, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 109, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 252, true);


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.django_site_id_seq', 1, true);


--
-- Name: djangocms_snippet_snippet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.djangocms_snippet_snippet_id_seq', 1, true);


--
-- Name: easy_thumbnails_source_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.easy_thumbnails_source_id_seq', 2, true);


--
-- Name: easy_thumbnails_thumbnail_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.easy_thumbnails_thumbnail_id_seq', 1, true);


--
-- Name: easy_thumbnails_thumbnaildimensions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.easy_thumbnails_thumbnaildimensions_id_seq', 1, false);


--
-- Name: events_attendees_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.events_attendees_id_seq', 1, false);


--
-- Name: events_eventcategory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.events_eventcategory_id_seq', 1, false);


--
-- Name: events_events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.events_events_id_seq', 1, false);


--
-- Name: events_networkevents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.events_networkevents_id_seq', 1, false);


--
-- Name: filer_clipboard_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.filer_clipboard_id_seq', 1, true);


--
-- Name: filer_clipboarditem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.filer_clipboarditem_id_seq', 1, false);


--
-- Name: filer_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.filer_file_id_seq', 1, true);


--
-- Name: filer_folder_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.filer_folder_id_seq', 1, false);


--
-- Name: filer_folderpermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.filer_folderpermission_id_seq', 1, false);


--
-- Name: filer_thumbnailoption_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.filer_thumbnailoption_id_seq', 1, false);


--
-- Name: jet_bookmark_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.jet_bookmark_id_seq', 1, false);


--
-- Name: jet_pinnedapplication_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.jet_pinnedapplication_id_seq', 1, false);


--
-- Name: knowledge_center_audiovisual_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.knowledge_center_audiovisual_id_seq', 1, false);


--
-- Name: knowledge_center_documentcategory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.knowledge_center_documentcategory_id_seq', 1, true);


--
-- Name: knowledge_center_subdocumentcategory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.knowledge_center_subdocumentcategory_id_seq', 1, false);


--
-- Name: knowledge_center_textcenter_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.knowledge_center_textcenter_id_seq', 1, false);


--
-- Name: knowledge_center_videocategory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.knowledge_center_videocategory_id_seq', 1, false);


--
-- Name: menus_cachekey_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.menus_cachekey_id_seq', 14, true);


--
-- Name: social_auth_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.social_auth_association_id_seq', 1, false);


--
-- Name: social_auth_code_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.social_auth_code_id_seq', 1, false);


--
-- Name: social_auth_nonce_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.social_auth_nonce_id_seq', 1, false);


--
-- Name: social_auth_partial_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.social_auth_partial_id_seq', 1, false);


--
-- Name: social_auth_usersocialauth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.social_auth_usersocialauth_id_seq', 1, false);


--
-- Name: venturelift_media_audiovisual_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.venturelift_media_audiovisual_id_seq', 2, true);


--
-- Name: venturelift_media_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.venturelift_media_category_id_seq', 2, true);


--
-- Name: venturelift_media_newsletter_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.venturelift_media_newsletter_id_seq', 1, false);


--
-- Name: venturelift_media_subscription_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.venturelift_media_subscription_id_seq', 1, false);


--
-- Name: venturelift_media_textmedia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.venturelift_media_textmedia_id_seq', 1, true);


--
-- Name: venturelift_profiles_allsystemuser_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.venturelift_profiles_allsystemuser_id_seq', 3, true);


--
-- Name: venturelift_profiles_business_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.venturelift_profiles_business_id_seq', 3, true);


--
-- Name: venturelift_profiles_businesscategory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.venturelift_profiles_businesscategory_id_seq', 1, true);


--
-- Name: venturelift_profiles_businessconnectrequest_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.venturelift_profiles_businessconnectrequest_id_seq', 1, true);


--
-- Name: venturelift_profiles_businessfinancial_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.venturelift_profiles_businessfinancial_id_seq', 2, true);


--
-- Name: venturelift_profiles_businessgoals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.venturelift_profiles_businessgoals_id_seq', 2, true);


--
-- Name: venturelift_profiles_businessgoals_primary_services_inte_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.venturelift_profiles_businessgoals_primary_services_inte_id_seq', 1, false);


--
-- Name: venturelift_profiles_businessgoals_secondary_services_in_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.venturelift_profiles_businessgoals_secondary_services_in_id_seq', 1, false);


--
-- Name: venturelift_profiles_businessinvestment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.venturelift_profiles_businessinvestment_id_seq', 2, true);


--
-- Name: venturelift_profiles_businessmodel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.venturelift_profiles_businessmodel_id_seq', 2, true);


--
-- Name: venturelift_profiles_businessteam_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.venturelift_profiles_businessteam_id_seq', 2, true);


--
-- Name: venturelift_profiles_investor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.venturelift_profiles_investor_id_seq', 17, true);


--
-- Name: venturelift_profiles_investorconnectrequest_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.venturelift_profiles_investorconnectrequest_id_seq', 3, true);


--
-- Name: venturelift_profiles_investorprofile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.venturelift_profiles_investorprofile_id_seq', 31, true);


--
-- Name: venturelift_profiles_investorprofile_target_sectors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.venturelift_profiles_investorprofile_target_sectors_id_seq', 3, true);


--
-- Name: venturelift_profiles_marketdescription_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.venturelift_profiles_marketdescription_id_seq', 2, true);


--
-- Name: venturelift_profiles_post_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.venturelift_profiles_post_id_seq', 1, true);


--
-- Name: venturelift_profiles_post_likes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.venturelift_profiles_post_likes_id_seq', 1, false);


--
-- Name: venturelift_profiles_supporter_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.venturelift_profiles_supporter_id_seq', 1, true);


--
-- Name: venturelift_profiles_supporterconnectrequest_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.venturelift_profiles_supporterconnectrequest_id_seq', 1, false);


--
-- Name: venturelift_profiles_supporterprofile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.venturelift_profiles_supporterprofile_id_seq', 1, true);


--
-- Name: venturelift_profiles_supporterprofile_interest_sectors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.venturelift_profiles_supporterprofile_interest_sectors_id_seq', 1, true);


--
-- Name: venturelift_profiles_surveyuser_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.venturelift_profiles_surveyuser_id_seq', 1, true);


--
-- Name: venturelift_profiles_trackinguser_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.venturelift_profiles_trackinguser_id_seq', 158, true);


--
-- Name: venturelift_profiles_vlaservices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.venturelift_profiles_vlaservices_id_seq', 1, false);


--
-- Name: videomembership_membership_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.videomembership_membership_id_seq', 1, false);


--
-- Name: videomembership_membershiptype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.videomembership_membershiptype_id_seq', 1, false);


--
-- Name: videomembership_subscription_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.videomembership_subscription_id_seq', 1, false);


--
-- Name: videomembership_usermembership_id_seq; Type: SEQUENCE SET; Schema: public; Owner: venture
--

SELECT pg_catalog.setval('public.videomembership_usermembership_id_seq', 17, true);


--
-- Name: actstream_action actstream_action_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.actstream_action
    ADD CONSTRAINT actstream_action_pkey PRIMARY KEY (id);


--
-- Name: actstream_follow actstream_follow_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.actstream_follow
    ADD CONSTRAINT actstream_follow_pkey PRIMARY KEY (id);


--
-- Name: actstream_follow actstream_follow_user_id_content_type_id__b3632d76_uniq; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.actstream_follow
    ADD CONSTRAINT actstream_follow_user_id_content_type_id__b3632d76_uniq UNIQUE (user_id, content_type_id, object_id, flag);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: cms_aliaspluginmodel cms_aliaspluginmodel_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_aliaspluginmodel
    ADD CONSTRAINT cms_aliaspluginmodel_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: cms_cmsplugin cms_cmsplugin_path_4917bb44_uniq; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_cmsplugin
    ADD CONSTRAINT cms_cmsplugin_path_4917bb44_uniq UNIQUE (path);


--
-- Name: cms_cmsplugin cms_cmsplugin_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_cmsplugin
    ADD CONSTRAINT cms_cmsplugin_pkey PRIMARY KEY (id);


--
-- Name: cms_globalpagepermission_sites cms_globalpagepermission_globalpagepermission_id__db684f41_uniq; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_globalpagepermission_sites
    ADD CONSTRAINT cms_globalpagepermission_globalpagepermission_id__db684f41_uniq UNIQUE (globalpagepermission_id, site_id);


--
-- Name: cms_globalpagepermission cms_globalpagepermission_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_globalpagepermission
    ADD CONSTRAINT cms_globalpagepermission_pkey PRIMARY KEY (id);


--
-- Name: cms_globalpagepermission_sites cms_globalpagepermission_sites_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_globalpagepermission_sites
    ADD CONSTRAINT cms_globalpagepermission_sites_pkey PRIMARY KEY (id);


--
-- Name: cms_page cms_page_node_id_publisher_is_draft_c1293d6a_uniq; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_page
    ADD CONSTRAINT cms_page_node_id_publisher_is_draft_c1293d6a_uniq UNIQUE (node_id, publisher_is_draft);


--
-- Name: cms_page cms_page_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_page
    ADD CONSTRAINT cms_page_pkey PRIMARY KEY (id);


--
-- Name: cms_page_placeholders cms_page_placeholders_page_id_placeholder_id_ab7fbfb8_uniq; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_page_placeholders
    ADD CONSTRAINT cms_page_placeholders_page_id_placeholder_id_ab7fbfb8_uniq UNIQUE (page_id, placeholder_id);


--
-- Name: cms_page_placeholders cms_page_placeholders_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_page_placeholders
    ADD CONSTRAINT cms_page_placeholders_pkey PRIMARY KEY (id);


--
-- Name: cms_page cms_page_publisher_public_id_key; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_page
    ADD CONSTRAINT cms_page_publisher_public_id_key UNIQUE (publisher_public_id);


--
-- Name: cms_pagepermission cms_pagepermission_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_pagepermission
    ADD CONSTRAINT cms_pagepermission_pkey PRIMARY KEY (id);


--
-- Name: cms_pageuser cms_pageuser_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_pageuser
    ADD CONSTRAINT cms_pageuser_pkey PRIMARY KEY (user_ptr_id);


--
-- Name: cms_pageusergroup cms_pageusergroup_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_pageusergroup
    ADD CONSTRAINT cms_pageusergroup_pkey PRIMARY KEY (group_ptr_id);


--
-- Name: cms_placeholder cms_placeholder_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_placeholder
    ADD CONSTRAINT cms_placeholder_pkey PRIMARY KEY (id);


--
-- Name: cms_placeholderreference cms_placeholderreference_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_placeholderreference
    ADD CONSTRAINT cms_placeholderreference_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: cms_staticplaceholder cms_staticplaceholder_code_site_id_21ba079c_uniq; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_staticplaceholder
    ADD CONSTRAINT cms_staticplaceholder_code_site_id_21ba079c_uniq UNIQUE (code, site_id);


--
-- Name: cms_staticplaceholder cms_staticplaceholder_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_staticplaceholder
    ADD CONSTRAINT cms_staticplaceholder_pkey PRIMARY KEY (id);


--
-- Name: cms_title cms_title_language_page_id_61aaf084_uniq; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_title
    ADD CONSTRAINT cms_title_language_page_id_61aaf084_uniq UNIQUE (language, page_id);


--
-- Name: cms_title cms_title_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_title
    ADD CONSTRAINT cms_title_pkey PRIMARY KEY (id);


--
-- Name: cms_title cms_title_publisher_public_id_key; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_title
    ADD CONSTRAINT cms_title_publisher_public_id_key UNIQUE (publisher_public_id);


--
-- Name: cms_treenode cms_treenode_path_key; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_treenode
    ADD CONSTRAINT cms_treenode_path_key UNIQUE (path);


--
-- Name: cms_treenode cms_treenode_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_treenode
    ADD CONSTRAINT cms_treenode_pkey PRIMARY KEY (id);


--
-- Name: cms_urlconfrevision cms_urlconfrevision_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_urlconfrevision
    ADD CONSTRAINT cms_urlconfrevision_pkey PRIMARY KEY (id);


--
-- Name: cms_usersettings cms_usersettings_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_usersettings
    ADD CONSTRAINT cms_usersettings_pkey PRIMARY KEY (id);


--
-- Name: cms_usersettings cms_usersettings_user_id_key; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_usersettings
    ADD CONSTRAINT cms_usersettings_user_id_key UNIQUE (user_id);


--
-- Name: crowdfunding_campaign crowdfunding_campaign_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.crowdfunding_campaign
    ADD CONSTRAINT crowdfunding_campaign_pkey PRIMARY KEY (id);


--
-- Name: crowdfunding_campaignconfiguration crowdfunding_campaignconfiguration_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.crowdfunding_campaignconfiguration
    ADD CONSTRAINT crowdfunding_campaignconfiguration_pkey PRIMARY KEY (id);


--
-- Name: crowdfunding_campaigndisbursement crowdfunding_campaigndisbursement_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.crowdfunding_campaigndisbursement
    ADD CONSTRAINT crowdfunding_campaigndisbursement_pkey PRIMARY KEY (id);


--
-- Name: crowdfunding_campaignpayment crowdfunding_campaignpayment_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.crowdfunding_campaignpayment
    ADD CONSTRAINT crowdfunding_campaignpayment_pkey PRIMARY KEY (id);


--
-- Name: crowdfunding_campaignreward crowdfunding_campaignreward_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.crowdfunding_campaignreward
    ADD CONSTRAINT crowdfunding_campaignreward_pkey PRIMARY KEY (id);


--
-- Name: crowdfunding_campaignsector crowdfunding_campaignsector_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.crowdfunding_campaignsector
    ADD CONSTRAINT crowdfunding_campaignsector_pkey PRIMARY KEY (id);


--
-- Name: crowdfunding_mpesaapitoken crowdfunding_mpesaapitoken_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.crowdfunding_mpesaapitoken
    ADD CONSTRAINT crowdfunding_mpesaapitoken_pkey PRIMARY KEY (id);


--
-- Name: crowdfunding_mpesac2bnotification crowdfunding_mpesac2bnotification_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.crowdfunding_mpesac2bnotification
    ADD CONSTRAINT crowdfunding_mpesac2bnotification_pkey PRIMARY KEY (id);


--
-- Name: crowdfunding_mpesac2bregister crowdfunding_mpesac2bregister_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.crowdfunding_mpesac2bregister
    ADD CONSTRAINT crowdfunding_mpesac2bregister_pkey PRIMARY KEY (id);


--
-- Name: crowdfunding_mpesastkpush crowdfunding_mpesastkpush_name_e67d4422_uniq; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.crowdfunding_mpesastkpush
    ADD CONSTRAINT crowdfunding_mpesastkpush_name_e67d4422_uniq UNIQUE (name);


--
-- Name: crowdfunding_mpesastkpush crowdfunding_mpesastkpush_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.crowdfunding_mpesastkpush
    ADD CONSTRAINT crowdfunding_mpesastkpush_pkey PRIMARY KEY (id);


--
-- Name: crowdfunding_mpesastkresponse crowdfunding_mpesastkresponse_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.crowdfunding_mpesastkresponse
    ADD CONSTRAINT crowdfunding_mpesastkresponse_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_site django_site_domain_a2e37b91_uniq; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);


--
-- Name: django_site django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- Name: djangocms_column_column djangocms_column_column_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.djangocms_column_column
    ADD CONSTRAINT djangocms_column_column_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: djangocms_column_multicolumns djangocms_column_multicolumns_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.djangocms_column_multicolumns
    ADD CONSTRAINT djangocms_column_multicolumns_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: djangocms_file_file djangocms_file_file_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.djangocms_file_file
    ADD CONSTRAINT djangocms_file_file_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: djangocms_file_folder djangocms_file_folder_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.djangocms_file_folder
    ADD CONSTRAINT djangocms_file_folder_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: djangocms_googlemap_googlemap djangocms_googlemap_googlemap_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.djangocms_googlemap_googlemap
    ADD CONSTRAINT djangocms_googlemap_googlemap_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: djangocms_googlemap_googlemapmarker djangocms_googlemap_googlemapmarker_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.djangocms_googlemap_googlemapmarker
    ADD CONSTRAINT djangocms_googlemap_googlemapmarker_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: djangocms_googlemap_googlemaproute djangocms_googlemap_googlemaproute_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.djangocms_googlemap_googlemaproute
    ADD CONSTRAINT djangocms_googlemap_googlemaproute_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: djangocms_link_link djangocms_link_link_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.djangocms_link_link
    ADD CONSTRAINT djangocms_link_link_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: djangocms_picture_picture djangocms_picture_picture_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.djangocms_picture_picture
    ADD CONSTRAINT djangocms_picture_picture_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: djangocms_snippet_snippet djangocms_snippet_snippet_name_key; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.djangocms_snippet_snippet
    ADD CONSTRAINT djangocms_snippet_snippet_name_key UNIQUE (name);


--
-- Name: djangocms_snippet_snippet djangocms_snippet_snippet_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.djangocms_snippet_snippet
    ADD CONSTRAINT djangocms_snippet_snippet_pkey PRIMARY KEY (id);


--
-- Name: djangocms_snippet_snippet djangocms_snippet_snippet_slug_bd43cd96_uniq; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.djangocms_snippet_snippet
    ADD CONSTRAINT djangocms_snippet_snippet_slug_bd43cd96_uniq UNIQUE (slug);


--
-- Name: djangocms_snippet_snippetptr djangocms_snippet_snippetptr_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.djangocms_snippet_snippetptr
    ADD CONSTRAINT djangocms_snippet_snippetptr_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: djangocms_style_style djangocms_style_style_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.djangocms_style_style
    ADD CONSTRAINT djangocms_style_style_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: djangocms_text_ckeditor_text djangocms_text_ckeditor_text_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.djangocms_text_ckeditor_text
    ADD CONSTRAINT djangocms_text_ckeditor_text_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: djangocms_video_videoplayer djangocms_video_video_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.djangocms_video_videoplayer
    ADD CONSTRAINT djangocms_video_video_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: djangocms_video_videosource djangocms_video_videosource_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.djangocms_video_videosource
    ADD CONSTRAINT djangocms_video_videosource_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: djangocms_video_videotrack djangocms_video_videotrack_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.djangocms_video_videotrack
    ADD CONSTRAINT djangocms_video_videotrack_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: easy_thumbnails_source easy_thumbnails_source_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.easy_thumbnails_source
    ADD CONSTRAINT easy_thumbnails_source_pkey PRIMARY KEY (id);


--
-- Name: easy_thumbnails_source easy_thumbnails_source_storage_hash_name_481ce32d_uniq; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.easy_thumbnails_source
    ADD CONSTRAINT easy_thumbnails_source_storage_hash_name_481ce32d_uniq UNIQUE (storage_hash, name);


--
-- Name: easy_thumbnails_thumbnail easy_thumbnails_thumbnai_storage_hash_name_source_fb375270_uniq; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.easy_thumbnails_thumbnail
    ADD CONSTRAINT easy_thumbnails_thumbnai_storage_hash_name_source_fb375270_uniq UNIQUE (storage_hash, name, source_id);


--
-- Name: easy_thumbnails_thumbnail easy_thumbnails_thumbnail_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.easy_thumbnails_thumbnail
    ADD CONSTRAINT easy_thumbnails_thumbnail_pkey PRIMARY KEY (id);


--
-- Name: easy_thumbnails_thumbnaildimensions easy_thumbnails_thumbnaildimensions_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions
    ADD CONSTRAINT easy_thumbnails_thumbnaildimensions_pkey PRIMARY KEY (id);


--
-- Name: easy_thumbnails_thumbnaildimensions easy_thumbnails_thumbnaildimensions_thumbnail_id_key; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions
    ADD CONSTRAINT easy_thumbnails_thumbnaildimensions_thumbnail_id_key UNIQUE (thumbnail_id);


--
-- Name: events_attendees events_attendees_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.events_attendees
    ADD CONSTRAINT events_attendees_pkey PRIMARY KEY (id);


--
-- Name: events_eventcategory events_eventcategory_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.events_eventcategory
    ADD CONSTRAINT events_eventcategory_pkey PRIMARY KEY (id);


--
-- Name: events_events events_events_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.events_events
    ADD CONSTRAINT events_events_pkey PRIMARY KEY (id);


--
-- Name: events_networkevents events_networkevents_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.events_networkevents
    ADD CONSTRAINT events_networkevents_pkey PRIMARY KEY (id);


--
-- Name: filer_clipboard filer_clipboard_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.filer_clipboard
    ADD CONSTRAINT filer_clipboard_pkey PRIMARY KEY (id);


--
-- Name: filer_clipboarditem filer_clipboarditem_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.filer_clipboarditem
    ADD CONSTRAINT filer_clipboarditem_pkey PRIMARY KEY (id);


--
-- Name: filer_file filer_file_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.filer_file
    ADD CONSTRAINT filer_file_pkey PRIMARY KEY (id);


--
-- Name: filer_folder filer_folder_parent_id_name_bc773258_uniq; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.filer_folder
    ADD CONSTRAINT filer_folder_parent_id_name_bc773258_uniq UNIQUE (parent_id, name);


--
-- Name: filer_folder filer_folder_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.filer_folder
    ADD CONSTRAINT filer_folder_pkey PRIMARY KEY (id);


--
-- Name: filer_folderpermission filer_folderpermission_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_pkey PRIMARY KEY (id);


--
-- Name: filer_image filer_image_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.filer_image
    ADD CONSTRAINT filer_image_pkey PRIMARY KEY (file_ptr_id);


--
-- Name: filer_thumbnailoption filer_thumbnailoption_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.filer_thumbnailoption
    ADD CONSTRAINT filer_thumbnailoption_pkey PRIMARY KEY (id);


--
-- Name: jet_bookmark jet_bookmark_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.jet_bookmark
    ADD CONSTRAINT jet_bookmark_pkey PRIMARY KEY (id);


--
-- Name: jet_pinnedapplication jet_pinnedapplication_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.jet_pinnedapplication
    ADD CONSTRAINT jet_pinnedapplication_pkey PRIMARY KEY (id);


--
-- Name: knowledge_center_audiovisual knowledge_center_audiovisual_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.knowledge_center_audiovisual
    ADD CONSTRAINT knowledge_center_audiovisual_pkey PRIMARY KEY (id);


--
-- Name: knowledge_center_documentcategory knowledge_center_documentcategory_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.knowledge_center_documentcategory
    ADD CONSTRAINT knowledge_center_documentcategory_pkey PRIMARY KEY (id);


--
-- Name: knowledge_center_subdocumentcategory knowledge_center_subdocumentcategory_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.knowledge_center_subdocumentcategory
    ADD CONSTRAINT knowledge_center_subdocumentcategory_pkey PRIMARY KEY (id);


--
-- Name: knowledge_center_textcenter knowledge_center_textcenter_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.knowledge_center_textcenter
    ADD CONSTRAINT knowledge_center_textcenter_pkey PRIMARY KEY (id);


--
-- Name: knowledge_center_videocategory knowledge_center_videocategory_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.knowledge_center_videocategory
    ADD CONSTRAINT knowledge_center_videocategory_pkey PRIMARY KEY (id);


--
-- Name: menus_cachekey menus_cachekey_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.menus_cachekey
    ADD CONSTRAINT menus_cachekey_pkey PRIMARY KEY (id);


--
-- Name: social_auth_association social_auth_association_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.social_auth_association
    ADD CONSTRAINT social_auth_association_pkey PRIMARY KEY (id);


--
-- Name: social_auth_association social_auth_association_server_url_handle_078befa2_uniq; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.social_auth_association
    ADD CONSTRAINT social_auth_association_server_url_handle_078befa2_uniq UNIQUE (server_url, handle);


--
-- Name: social_auth_code social_auth_code_email_code_801b2d02_uniq; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.social_auth_code
    ADD CONSTRAINT social_auth_code_email_code_801b2d02_uniq UNIQUE (email, code);


--
-- Name: social_auth_code social_auth_code_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.social_auth_code
    ADD CONSTRAINT social_auth_code_pkey PRIMARY KEY (id);


--
-- Name: social_auth_nonce social_auth_nonce_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.social_auth_nonce
    ADD CONSTRAINT social_auth_nonce_pkey PRIMARY KEY (id);


--
-- Name: social_auth_nonce social_auth_nonce_server_url_timestamp_salt_f6284463_uniq; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.social_auth_nonce
    ADD CONSTRAINT social_auth_nonce_server_url_timestamp_salt_f6284463_uniq UNIQUE (server_url, "timestamp", salt);


--
-- Name: social_auth_partial social_auth_partial_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.social_auth_partial
    ADD CONSTRAINT social_auth_partial_pkey PRIMARY KEY (id);


--
-- Name: social_auth_usersocialauth social_auth_usersocialauth_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.social_auth_usersocialauth
    ADD CONSTRAINT social_auth_usersocialauth_pkey PRIMARY KEY (id);


--
-- Name: social_auth_usersocialauth social_auth_usersocialauth_provider_uid_e6b5e668_uniq; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.social_auth_usersocialauth
    ADD CONSTRAINT social_auth_usersocialauth_provider_uid_e6b5e668_uniq UNIQUE (provider, uid);


--
-- Name: venturelift_media_audiovisual venturelift_media_audiovisual_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_media_audiovisual
    ADD CONSTRAINT venturelift_media_audiovisual_pkey PRIMARY KEY (id);


--
-- Name: venturelift_media_category venturelift_media_category_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_media_category
    ADD CONSTRAINT venturelift_media_category_pkey PRIMARY KEY (id);


--
-- Name: venturelift_media_newsletter venturelift_media_newsletter_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_media_newsletter
    ADD CONSTRAINT venturelift_media_newsletter_pkey PRIMARY KEY (id);


--
-- Name: venturelift_media_subscription venturelift_media_subscription_email_key; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_media_subscription
    ADD CONSTRAINT venturelift_media_subscription_email_key UNIQUE (email);


--
-- Name: venturelift_media_subscription venturelift_media_subscription_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_media_subscription
    ADD CONSTRAINT venturelift_media_subscription_pkey PRIMARY KEY (id);


--
-- Name: venturelift_media_textmedia venturelift_media_textmedia_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_media_textmedia
    ADD CONSTRAINT venturelift_media_textmedia_pkey PRIMARY KEY (id);


--
-- Name: venturelift_profiles_allsystemuser venturelift_profiles_allsystemuser_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_allsystemuser
    ADD CONSTRAINT venturelift_profiles_allsystemuser_pkey PRIMARY KEY (id);


--
-- Name: venturelift_profiles_businessgoals_primary_services_interes3068 venturelift_profiles_bus_businessgoals_id_vlaserv_d9f183d3_uniq; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_businessgoals_primary_services_interes3068
    ADD CONSTRAINT venturelift_profiles_bus_businessgoals_id_vlaserv_d9f183d3_uniq UNIQUE (businessgoals_id, vlaservices_id);


--
-- Name: venturelift_profiles_businessgoals_secondary_services_inter2394 venturelift_profiles_bus_businessgoals_id_vlaserv_ff961508_uniq; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_businessgoals_secondary_services_inter2394
    ADD CONSTRAINT venturelift_profiles_bus_businessgoals_id_vlaserv_ff961508_uniq UNIQUE (businessgoals_id, vlaservices_id);


--
-- Name: venturelift_profiles_business venturelift_profiles_business_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_business
    ADD CONSTRAINT venturelift_profiles_business_pkey PRIMARY KEY (id);


--
-- Name: venturelift_profiles_businesscategory venturelift_profiles_businesscategory_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_businesscategory
    ADD CONSTRAINT venturelift_profiles_businesscategory_pkey PRIMARY KEY (id);


--
-- Name: venturelift_profiles_businessconnectrequest venturelift_profiles_businessconnectrequest_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_businessconnectrequest
    ADD CONSTRAINT venturelift_profiles_businessconnectrequest_pkey PRIMARY KEY (id);


--
-- Name: venturelift_profiles_businessfinancial venturelift_profiles_businessfinancial_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_businessfinancial
    ADD CONSTRAINT venturelift_profiles_businessfinancial_pkey PRIMARY KEY (id);


--
-- Name: venturelift_profiles_businessgoals venturelift_profiles_businessgoals_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_businessgoals
    ADD CONSTRAINT venturelift_profiles_businessgoals_pkey PRIMARY KEY (id);


--
-- Name: venturelift_profiles_businessgoals_primary_services_interes3068 venturelift_profiles_businessgoals_primary_services_intere_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_businessgoals_primary_services_interes3068
    ADD CONSTRAINT venturelift_profiles_businessgoals_primary_services_intere_pkey PRIMARY KEY (id);


--
-- Name: venturelift_profiles_businessgoals_secondary_services_inter2394 venturelift_profiles_businessgoals_secondary_services_inte_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_businessgoals_secondary_services_inter2394
    ADD CONSTRAINT venturelift_profiles_businessgoals_secondary_services_inte_pkey PRIMARY KEY (id);


--
-- Name: venturelift_profiles_businessinvestment venturelift_profiles_businessinvestment_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_businessinvestment
    ADD CONSTRAINT venturelift_profiles_businessinvestment_pkey PRIMARY KEY (id);


--
-- Name: venturelift_profiles_businessmodel venturelift_profiles_businessmodel_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_businessmodel
    ADD CONSTRAINT venturelift_profiles_businessmodel_pkey PRIMARY KEY (id);


--
-- Name: venturelift_profiles_businessteam venturelift_profiles_businessteam_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_businessteam
    ADD CONSTRAINT venturelift_profiles_businessteam_pkey PRIMARY KEY (id);


--
-- Name: venturelift_profiles_investorprofile_target_sectors venturelift_profiles_inv_investorprofile_id_busin_10114dae_uniq; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_investorprofile_target_sectors
    ADD CONSTRAINT venturelift_profiles_inv_investorprofile_id_busin_10114dae_uniq UNIQUE (investorprofile_id, businesscategory_id);


--
-- Name: venturelift_profiles_investor venturelift_profiles_investor_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_investor
    ADD CONSTRAINT venturelift_profiles_investor_pkey PRIMARY KEY (id);


--
-- Name: venturelift_profiles_investorconnectrequest venturelift_profiles_investorconnectrequest_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_investorconnectrequest
    ADD CONSTRAINT venturelift_profiles_investorconnectrequest_pkey PRIMARY KEY (id);


--
-- Name: venturelift_profiles_investorprofile venturelift_profiles_investorprofile_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_investorprofile
    ADD CONSTRAINT venturelift_profiles_investorprofile_pkey PRIMARY KEY (id);


--
-- Name: venturelift_profiles_investorprofile_target_sectors venturelift_profiles_investorprofile_target_sectors_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_investorprofile_target_sectors
    ADD CONSTRAINT venturelift_profiles_investorprofile_target_sectors_pkey PRIMARY KEY (id);


--
-- Name: venturelift_profiles_marketdescription venturelift_profiles_marketdescription_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_marketdescription
    ADD CONSTRAINT venturelift_profiles_marketdescription_pkey PRIMARY KEY (id);


--
-- Name: venturelift_profiles_post_likes venturelift_profiles_post_likes_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_post_likes
    ADD CONSTRAINT venturelift_profiles_post_likes_pkey PRIMARY KEY (id);


--
-- Name: venturelift_profiles_post_likes venturelift_profiles_post_likes_post_id_user_id_2cee65a9_uniq; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_post_likes
    ADD CONSTRAINT venturelift_profiles_post_likes_post_id_user_id_2cee65a9_uniq UNIQUE (post_id, user_id);


--
-- Name: venturelift_profiles_post venturelift_profiles_post_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_post
    ADD CONSTRAINT venturelift_profiles_post_pkey PRIMARY KEY (id);


--
-- Name: venturelift_profiles_supporterprofile_interest_sectors venturelift_profiles_sup_supporterprofile_id_busi_8c5a64be_uniq; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_supporterprofile_interest_sectors
    ADD CONSTRAINT venturelift_profiles_sup_supporterprofile_id_busi_8c5a64be_uniq UNIQUE (supporterprofile_id, businesscategory_id);


--
-- Name: venturelift_profiles_supporter venturelift_profiles_supporter_company_key; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_supporter
    ADD CONSTRAINT venturelift_profiles_supporter_company_key UNIQUE (company);


--
-- Name: venturelift_profiles_supporter venturelift_profiles_supporter_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_supporter
    ADD CONSTRAINT venturelift_profiles_supporter_pkey PRIMARY KEY (id);


--
-- Name: venturelift_profiles_supporterconnectrequest venturelift_profiles_supporterconnectrequest_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_supporterconnectrequest
    ADD CONSTRAINT venturelift_profiles_supporterconnectrequest_pkey PRIMARY KEY (id);


--
-- Name: venturelift_profiles_supporterprofile_interest_sectors venturelift_profiles_supporterprofile_interest_sectors_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_supporterprofile_interest_sectors
    ADD CONSTRAINT venturelift_profiles_supporterprofile_interest_sectors_pkey PRIMARY KEY (id);


--
-- Name: venturelift_profiles_supporterprofile venturelift_profiles_supporterprofile_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_supporterprofile
    ADD CONSTRAINT venturelift_profiles_supporterprofile_pkey PRIMARY KEY (id);


--
-- Name: venturelift_profiles_surveyuser venturelift_profiles_surveyuser_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_surveyuser
    ADD CONSTRAINT venturelift_profiles_surveyuser_pkey PRIMARY KEY (id);


--
-- Name: venturelift_profiles_trackinguser venturelift_profiles_trackinguser_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_trackinguser
    ADD CONSTRAINT venturelift_profiles_trackinguser_pkey PRIMARY KEY (id);


--
-- Name: venturelift_profiles_vlaservices venturelift_profiles_vlaservices_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_vlaservices
    ADD CONSTRAINT venturelift_profiles_vlaservices_pkey PRIMARY KEY (id);


--
-- Name: videomembership_membership videomembership_membership_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.videomembership_membership
    ADD CONSTRAINT videomembership_membership_pkey PRIMARY KEY (id);


--
-- Name: videomembership_membershiptype videomembership_membershiptype_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.videomembership_membershiptype
    ADD CONSTRAINT videomembership_membershiptype_pkey PRIMARY KEY (id);


--
-- Name: videomembership_subscription videomembership_subscription_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.videomembership_subscription
    ADD CONSTRAINT videomembership_subscription_pkey PRIMARY KEY (id);


--
-- Name: videomembership_usermembership videomembership_usermembership_pkey; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.videomembership_usermembership
    ADD CONSTRAINT videomembership_usermembership_pkey PRIMARY KEY (id);


--
-- Name: videomembership_usermembership videomembership_usermembership_user_id_key; Type: CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.videomembership_usermembership
    ADD CONSTRAINT videomembership_usermembership_user_id_key UNIQUE (user_id);


--
-- Name: actstream_action_action_object_content_type_id_ee623c15; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX actstream_action_action_object_content_type_id_ee623c15 ON public.actstream_action USING btree (action_object_content_type_id);


--
-- Name: actstream_action_action_object_object_id_6433bdf7; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX actstream_action_action_object_object_id_6433bdf7 ON public.actstream_action USING btree (action_object_object_id);


--
-- Name: actstream_action_action_object_object_id_6433bdf7_like; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX actstream_action_action_object_object_id_6433bdf7_like ON public.actstream_action USING btree (action_object_object_id varchar_pattern_ops);


--
-- Name: actstream_action_actor_content_type_id_d5e5ec2a; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX actstream_action_actor_content_type_id_d5e5ec2a ON public.actstream_action USING btree (actor_content_type_id);


--
-- Name: actstream_action_actor_object_id_72ef0cfa; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX actstream_action_actor_object_id_72ef0cfa ON public.actstream_action USING btree (actor_object_id);


--
-- Name: actstream_action_actor_object_id_72ef0cfa_like; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX actstream_action_actor_object_id_72ef0cfa_like ON public.actstream_action USING btree (actor_object_id varchar_pattern_ops);


--
-- Name: actstream_action_public_ac0653e9; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX actstream_action_public_ac0653e9 ON public.actstream_action USING btree (public);


--
-- Name: actstream_action_target_content_type_id_187fa164; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX actstream_action_target_content_type_id_187fa164 ON public.actstream_action USING btree (target_content_type_id);


--
-- Name: actstream_action_target_object_id_e080d801; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX actstream_action_target_object_id_e080d801 ON public.actstream_action USING btree (target_object_id);


--
-- Name: actstream_action_target_object_id_e080d801_like; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX actstream_action_target_object_id_e080d801_like ON public.actstream_action USING btree (target_object_id varchar_pattern_ops);


--
-- Name: actstream_action_timestamp_a23fe3ae; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX actstream_action_timestamp_a23fe3ae ON public.actstream_action USING btree ("timestamp");


--
-- Name: actstream_action_verb_83f768b7; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX actstream_action_verb_83f768b7 ON public.actstream_action USING btree (verb);


--
-- Name: actstream_action_verb_83f768b7_like; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX actstream_action_verb_83f768b7_like ON public.actstream_action USING btree (verb varchar_pattern_ops);


--
-- Name: actstream_follow_content_type_id_ba287eb9; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX actstream_follow_content_type_id_ba287eb9 ON public.actstream_follow USING btree (content_type_id);


--
-- Name: actstream_follow_flag_0e741c24; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX actstream_follow_flag_0e741c24 ON public.actstream_follow USING btree (flag);


--
-- Name: actstream_follow_flag_0e741c24_like; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX actstream_follow_flag_0e741c24_like ON public.actstream_follow USING btree (flag varchar_pattern_ops);


--
-- Name: actstream_follow_object_id_d790e00d; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX actstream_follow_object_id_d790e00d ON public.actstream_follow USING btree (object_id);


--
-- Name: actstream_follow_object_id_d790e00d_like; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX actstream_follow_object_id_d790e00d_like ON public.actstream_follow USING btree (object_id varchar_pattern_ops);


--
-- Name: actstream_follow_started_254c63bd; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX actstream_follow_started_254c63bd ON public.actstream_follow USING btree (started);


--
-- Name: actstream_follow_user_id_e9d4e1ff; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX actstream_follow_user_id_e9d4e1ff ON public.actstream_follow USING btree (user_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a ON public.cms_aliaspluginmodel USING btree (alias_placeholder_id);


--
-- Name: cms_aliaspluginmodel_plugin_id_9867676e; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX cms_aliaspluginmodel_plugin_id_9867676e ON public.cms_aliaspluginmodel USING btree (plugin_id);


--
-- Name: cms_cmsplugin_language_bbea8a48; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX cms_cmsplugin_language_bbea8a48 ON public.cms_cmsplugin USING btree (language);


--
-- Name: cms_cmsplugin_language_bbea8a48_like; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX cms_cmsplugin_language_bbea8a48_like ON public.cms_cmsplugin USING btree (language varchar_pattern_ops);


--
-- Name: cms_cmsplugin_parent_id_fd3bd9dd; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX cms_cmsplugin_parent_id_fd3bd9dd ON public.cms_cmsplugin USING btree (parent_id);


--
-- Name: cms_cmsplugin_path_4917bb44_like; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX cms_cmsplugin_path_4917bb44_like ON public.cms_cmsplugin USING btree (path varchar_pattern_ops);


--
-- Name: cms_cmsplugin_placeholder_id_0bfa3b26; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX cms_cmsplugin_placeholder_id_0bfa3b26 ON public.cms_cmsplugin USING btree (placeholder_id);


--
-- Name: cms_cmsplugin_plugin_type_94e96ebf; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX cms_cmsplugin_plugin_type_94e96ebf ON public.cms_cmsplugin USING btree (plugin_type);


--
-- Name: cms_cmsplugin_plugin_type_94e96ebf_like; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX cms_cmsplugin_plugin_type_94e96ebf_like ON public.cms_cmsplugin USING btree (plugin_type varchar_pattern_ops);


--
-- Name: cms_globalpagepermission_group_id_991b4733; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX cms_globalpagepermission_group_id_991b4733 ON public.cms_globalpagepermission USING btree (group_id);


--
-- Name: cms_globalpagepermission_sites_globalpagepermission_id_46bd2681; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX cms_globalpagepermission_sites_globalpagepermission_id_46bd2681 ON public.cms_globalpagepermission_sites USING btree (globalpagepermission_id);


--
-- Name: cms_globalpagepermission_sites_site_id_00460b53; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX cms_globalpagepermission_sites_site_id_00460b53 ON public.cms_globalpagepermission_sites USING btree (site_id);


--
-- Name: cms_globalpagepermission_user_id_a227cee1; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX cms_globalpagepermission_user_id_a227cee1 ON public.cms_globalpagepermission USING btree (user_id);


--
-- Name: cms_page_application_urls_9ef47497; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX cms_page_application_urls_9ef47497 ON public.cms_page USING btree (application_urls);


--
-- Name: cms_page_application_urls_9ef47497_like; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX cms_page_application_urls_9ef47497_like ON public.cms_page USING btree (application_urls varchar_pattern_ops);


--
-- Name: cms_page_in_navigation_01c24279; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX cms_page_in_navigation_01c24279 ON public.cms_page USING btree (in_navigation);


--
-- Name: cms_page_is_home_edadca07; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX cms_page_is_home_edadca07 ON public.cms_page USING btree (is_home);


--
-- Name: cms_page_limit_visibility_in_menu_30db6aa6; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX cms_page_limit_visibility_in_menu_30db6aa6 ON public.cms_page USING btree (limit_visibility_in_menu);


--
-- Name: cms_page_navigation_extenders_c24af8dd; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX cms_page_navigation_extenders_c24af8dd ON public.cms_page USING btree (navigation_extenders);


--
-- Name: cms_page_navigation_extenders_c24af8dd_like; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX cms_page_navigation_extenders_c24af8dd_like ON public.cms_page USING btree (navigation_extenders varchar_pattern_ops);


--
-- Name: cms_page_node_id_c87b85a9; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX cms_page_node_id_c87b85a9 ON public.cms_page USING btree (node_id);


--
-- Name: cms_page_placeholders_page_id_f2ce8dec; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX cms_page_placeholders_page_id_f2ce8dec ON public.cms_page_placeholders USING btree (page_id);


--
-- Name: cms_page_placeholders_placeholder_id_6b120886; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX cms_page_placeholders_placeholder_id_6b120886 ON public.cms_page_placeholders USING btree (placeholder_id);


--
-- Name: cms_page_publication_date_684fabf7; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX cms_page_publication_date_684fabf7 ON public.cms_page USING btree (publication_date);


--
-- Name: cms_page_publication_end_date_12a0c46a; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX cms_page_publication_end_date_12a0c46a ON public.cms_page USING btree (publication_end_date);


--
-- Name: cms_page_publisher_is_draft_141cba60; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX cms_page_publisher_is_draft_141cba60 ON public.cms_page USING btree (publisher_is_draft);


--
-- Name: cms_page_reverse_id_ffc9ede2; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX cms_page_reverse_id_ffc9ede2 ON public.cms_page USING btree (reverse_id);


--
-- Name: cms_page_reverse_id_ffc9ede2_like; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX cms_page_reverse_id_ffc9ede2_like ON public.cms_page USING btree (reverse_id varchar_pattern_ops);


--
-- Name: cms_page_soft_root_51efccbe; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX cms_page_soft_root_51efccbe ON public.cms_page USING btree (soft_root);


--
-- Name: cms_pagepermission_group_id_af5af193; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX cms_pagepermission_group_id_af5af193 ON public.cms_pagepermission USING btree (group_id);


--
-- Name: cms_pagepermission_page_id_0ae9a163; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX cms_pagepermission_page_id_0ae9a163 ON public.cms_pagepermission USING btree (page_id);


--
-- Name: cms_pagepermission_user_id_0c7d2b3c; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX cms_pagepermission_user_id_0c7d2b3c ON public.cms_pagepermission USING btree (user_id);


--
-- Name: cms_pageuser_created_by_id_8e9fbf83; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX cms_pageuser_created_by_id_8e9fbf83 ON public.cms_pageuser USING btree (created_by_id);


--
-- Name: cms_pageusergroup_created_by_id_7d57fa39; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX cms_pageusergroup_created_by_id_7d57fa39 ON public.cms_pageusergroup USING btree (created_by_id);


--
-- Name: cms_placeholder_slot_0bc04d21; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX cms_placeholder_slot_0bc04d21 ON public.cms_placeholder USING btree (slot);


--
-- Name: cms_placeholder_slot_0bc04d21_like; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX cms_placeholder_slot_0bc04d21_like ON public.cms_placeholder USING btree (slot varchar_pattern_ops);


--
-- Name: cms_placeholderreference_placeholder_ref_id_244759b1; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX cms_placeholderreference_placeholder_ref_id_244759b1 ON public.cms_placeholderreference USING btree (placeholder_ref_id);


--
-- Name: cms_staticplaceholder_draft_id_5aee407b; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX cms_staticplaceholder_draft_id_5aee407b ON public.cms_staticplaceholder USING btree (draft_id);


--
-- Name: cms_staticplaceholder_public_id_876aaa66; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX cms_staticplaceholder_public_id_876aaa66 ON public.cms_staticplaceholder USING btree (public_id);


--
-- Name: cms_staticplaceholder_site_id_dc6a85b6; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX cms_staticplaceholder_site_id_dc6a85b6 ON public.cms_staticplaceholder USING btree (site_id);


--
-- Name: cms_title_has_url_overwrite_ecf27bb9; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX cms_title_has_url_overwrite_ecf27bb9 ON public.cms_title USING btree (has_url_overwrite);


--
-- Name: cms_title_language_50a0dfa1; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX cms_title_language_50a0dfa1 ON public.cms_title USING btree (language);


--
-- Name: cms_title_language_50a0dfa1_like; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX cms_title_language_50a0dfa1_like ON public.cms_title USING btree (language varchar_pattern_ops);


--
-- Name: cms_title_page_id_5fade2a3; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX cms_title_page_id_5fade2a3 ON public.cms_title USING btree (page_id);


--
-- Name: cms_title_path_c484314c; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX cms_title_path_c484314c ON public.cms_title USING btree (path);


--
-- Name: cms_title_path_c484314c_like; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX cms_title_path_c484314c_like ON public.cms_title USING btree (path varchar_pattern_ops);


--
-- Name: cms_title_publisher_is_draft_95874c88; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX cms_title_publisher_is_draft_95874c88 ON public.cms_title USING btree (publisher_is_draft);


--
-- Name: cms_title_publisher_state_9a952b0f; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX cms_title_publisher_state_9a952b0f ON public.cms_title USING btree (publisher_state);


--
-- Name: cms_title_slug_4947d146; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX cms_title_slug_4947d146 ON public.cms_title USING btree (slug);


--
-- Name: cms_title_slug_4947d146_like; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX cms_title_slug_4947d146_like ON public.cms_title USING btree (slug varchar_pattern_ops);


--
-- Name: cms_treenode_parent_id_59bb02c4; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX cms_treenode_parent_id_59bb02c4 ON public.cms_treenode USING btree (parent_id);


--
-- Name: cms_treenode_path_6eb22885_like; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX cms_treenode_path_6eb22885_like ON public.cms_treenode USING btree (path varchar_pattern_ops);


--
-- Name: cms_treenode_site_id_d3f46985; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX cms_treenode_site_id_d3f46985 ON public.cms_treenode USING btree (site_id);


--
-- Name: cms_usersettings_clipboard_id_3ae17c19; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX cms_usersettings_clipboard_id_3ae17c19 ON public.cms_usersettings USING btree (clipboard_id);


--
-- Name: crowdfunding_campaign_approved_by_id_db142525; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX crowdfunding_campaign_approved_by_id_db142525 ON public.crowdfunding_campaign USING btree (approved_by_id);


--
-- Name: crowdfunding_campaign_campaign_owner_id_2d209f6a; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX crowdfunding_campaign_campaign_owner_id_2d209f6a ON public.crowdfunding_campaign USING btree (campaign_owner_id);


--
-- Name: crowdfunding_campaign_rejected_by_id_a23dc344; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX crowdfunding_campaign_rejected_by_id_a23dc344 ON public.crowdfunding_campaign USING btree (rejected_by_id);


--
-- Name: crowdfunding_campaign_sector_id_6ac143a0; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX crowdfunding_campaign_sector_id_6ac143a0 ON public.crowdfunding_campaign USING btree (sector_id);


--
-- Name: crowdfunding_campaignconfiguration_added_by_id_ee2814ca; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX crowdfunding_campaignconfiguration_added_by_id_ee2814ca ON public.crowdfunding_campaignconfiguration USING btree (added_by_id);


--
-- Name: crowdfunding_campaigndisbursement_approved_by_id_60455bb0; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX crowdfunding_campaigndisbursement_approved_by_id_60455bb0 ON public.crowdfunding_campaigndisbursement USING btree (approved_by_id);


--
-- Name: crowdfunding_campaigndisbursement_campaign_id_23226380; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX crowdfunding_campaigndisbursement_campaign_id_23226380 ON public.crowdfunding_campaigndisbursement USING btree (campaign_id);


--
-- Name: crowdfunding_campaigndisbursement_recipient_id_5bbbd355; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX crowdfunding_campaigndisbursement_recipient_id_5bbbd355 ON public.crowdfunding_campaigndisbursement USING btree (recipient_id);


--
-- Name: crowdfunding_campaigndisbursement_rejected_by_id_dd997b4d; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX crowdfunding_campaigndisbursement_rejected_by_id_dd997b4d ON public.crowdfunding_campaigndisbursement USING btree (rejected_by_id);


--
-- Name: crowdfunding_campaignpayment_campaign_id_c17c4f16; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX crowdfunding_campaignpayment_campaign_id_c17c4f16 ON public.crowdfunding_campaignpayment USING btree (campaign_id);


--
-- Name: crowdfunding_campaignpayment_donator_id_a1c694d7; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX crowdfunding_campaignpayment_donator_id_a1c694d7 ON public.crowdfunding_campaignpayment USING btree (donator_id);


--
-- Name: crowdfunding_campaignreward_campaign_id_810a81e4; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX crowdfunding_campaignreward_campaign_id_810a81e4 ON public.crowdfunding_campaignreward USING btree (campaign_id);


--
-- Name: crowdfunding_campaignreward_payment_id_14737afe; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX crowdfunding_campaignreward_payment_id_14737afe ON public.crowdfunding_campaignreward USING btree (payment_id);


--
-- Name: crowdfunding_campaignreward_rewarded_user_id_377bd886; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX crowdfunding_campaignreward_rewarded_user_id_377bd886 ON public.crowdfunding_campaignreward USING btree (rewarded_user_id);


--
-- Name: crowdfunding_campaignsector_added_by_id_8acbabf7; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX crowdfunding_campaignsector_added_by_id_8acbabf7 ON public.crowdfunding_campaignsector USING btree (added_by_id);


--
-- Name: crowdfunding_mpesac2bnotification_payment_id_d1973bb2; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX crowdfunding_mpesac2bnotification_payment_id_d1973bb2 ON public.crowdfunding_mpesac2bnotification USING btree (payment_id);


--
-- Name: crowdfunding_mpesastkpush_name_e67d4422_like; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX crowdfunding_mpesastkpush_name_e67d4422_like ON public.crowdfunding_mpesastkpush USING btree (name varchar_pattern_ops);


--
-- Name: crowdfunding_mpesastkpush_payment_id_f25339a0; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX crowdfunding_mpesastkpush_payment_id_f25339a0 ON public.crowdfunding_mpesastkpush USING btree (payment_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: django_site_domain_a2e37b91_like; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);


--
-- Name: djangocms_file_file_file_src_id_74ac14a5; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX djangocms_file_file_file_src_id_74ac14a5 ON public.djangocms_file_file USING btree (file_src_id);


--
-- Name: djangocms_file_folder_folder_src_id_9558406a; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX djangocms_file_folder_folder_src_id_9558406a ON public.djangocms_file_folder USING btree (folder_src_id);


--
-- Name: djangocms_googlemap_googlemapmarker_icon_id_3b103213; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX djangocms_googlemap_googlemapmarker_icon_id_3b103213 ON public.djangocms_googlemap_googlemapmarker USING btree (icon_id);


--
-- Name: djangocms_link_link_page_link_id_adba1bc7; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX djangocms_link_link_page_link_id_adba1bc7 ON public.djangocms_link_link USING btree (internal_link_id);


--
-- Name: djangocms_picture_picture_page_link_id_d5c782e0; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX djangocms_picture_picture_page_link_id_d5c782e0 ON public.djangocms_picture_picture USING btree (link_page_id);


--
-- Name: djangocms_picture_picture_picture_id_f7d6711b; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX djangocms_picture_picture_picture_id_f7d6711b ON public.djangocms_picture_picture USING btree (picture_id);


--
-- Name: djangocms_picture_picture_thumbnail_options_id_59cf80d1; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX djangocms_picture_picture_thumbnail_options_id_59cf80d1 ON public.djangocms_picture_picture USING btree (thumbnail_options_id);


--
-- Name: djangocms_snippet_snippet_name_260f397b_like; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX djangocms_snippet_snippet_name_260f397b_like ON public.djangocms_snippet_snippet USING btree (name varchar_pattern_ops);


--
-- Name: djangocms_snippet_snippet_slug_bd43cd96_like; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX djangocms_snippet_snippet_slug_bd43cd96_like ON public.djangocms_snippet_snippet USING btree (slug varchar_pattern_ops);


--
-- Name: djangocms_snippet_snippetptr_snippet_id_56b99614; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX djangocms_snippet_snippetptr_snippet_id_56b99614 ON public.djangocms_snippet_snippetptr USING btree (snippet_id);


--
-- Name: djangocms_video_videoplayer_poster_id_07790e24; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX djangocms_video_videoplayer_poster_id_07790e24 ON public.djangocms_video_videoplayer USING btree (poster_id);


--
-- Name: djangocms_video_videosource_source_file_id_16f11167; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX djangocms_video_videosource_source_file_id_16f11167 ON public.djangocms_video_videosource USING btree (source_file_id);


--
-- Name: djangocms_video_videotrack_src_id_e5a015d8; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX djangocms_video_videotrack_src_id_e5a015d8 ON public.djangocms_video_videotrack USING btree (src_id);


--
-- Name: easy_thumbnails_source_name_5fe0edc6; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX easy_thumbnails_source_name_5fe0edc6 ON public.easy_thumbnails_source USING btree (name);


--
-- Name: easy_thumbnails_source_name_5fe0edc6_like; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX easy_thumbnails_source_name_5fe0edc6_like ON public.easy_thumbnails_source USING btree (name varchar_pattern_ops);


--
-- Name: easy_thumbnails_source_storage_hash_946cbcc9; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX easy_thumbnails_source_storage_hash_946cbcc9 ON public.easy_thumbnails_source USING btree (storage_hash);


--
-- Name: easy_thumbnails_source_storage_hash_946cbcc9_like; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX easy_thumbnails_source_storage_hash_946cbcc9_like ON public.easy_thumbnails_source USING btree (storage_hash varchar_pattern_ops);


--
-- Name: easy_thumbnails_thumbnail_name_b5882c31; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX easy_thumbnails_thumbnail_name_b5882c31 ON public.easy_thumbnails_thumbnail USING btree (name);


--
-- Name: easy_thumbnails_thumbnail_name_b5882c31_like; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX easy_thumbnails_thumbnail_name_b5882c31_like ON public.easy_thumbnails_thumbnail USING btree (name varchar_pattern_ops);


--
-- Name: easy_thumbnails_thumbnail_source_id_5b57bc77; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX easy_thumbnails_thumbnail_source_id_5b57bc77 ON public.easy_thumbnails_thumbnail USING btree (source_id);


--
-- Name: easy_thumbnails_thumbnail_storage_hash_f1435f49; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX easy_thumbnails_thumbnail_storage_hash_f1435f49 ON public.easy_thumbnails_thumbnail USING btree (storage_hash);


--
-- Name: easy_thumbnails_thumbnail_storage_hash_f1435f49_like; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX easy_thumbnails_thumbnail_storage_hash_f1435f49_like ON public.easy_thumbnails_thumbnail USING btree (storage_hash varchar_pattern_ops);


--
-- Name: events_attendees_attendee_id_df12dae2; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX events_attendees_attendee_id_df12dae2 ON public.events_attendees USING btree (attendee_id);


--
-- Name: events_attendees_event_id_ec59ef41; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX events_attendees_event_id_ec59ef41 ON public.events_attendees USING btree (event_id);


--
-- Name: events_eventcategory_author_id_e2003454; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX events_eventcategory_author_id_e2003454 ON public.events_eventcategory USING btree (author_id);


--
-- Name: events_events_author_id_c32fa65a; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX events_events_author_id_c32fa65a ON public.events_events USING btree (author_id);


--
-- Name: events_events_category_id_cc0e3607; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX events_events_category_id_cc0e3607 ON public.events_events USING btree (category_id);


--
-- Name: events_networkevents_author_id_2d24c1d5; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX events_networkevents_author_id_2d24c1d5 ON public.events_networkevents USING btree (author_id);


--
-- Name: events_networkevents_category_id_046b16df; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX events_networkevents_category_id_046b16df ON public.events_networkevents USING btree (category_id);


--
-- Name: filer_clipboard_user_id_b52ff0bc; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX filer_clipboard_user_id_b52ff0bc ON public.filer_clipboard USING btree (user_id);


--
-- Name: filer_clipboarditem_clipboard_id_7a76518b; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX filer_clipboarditem_clipboard_id_7a76518b ON public.filer_clipboarditem USING btree (clipboard_id);


--
-- Name: filer_clipboarditem_file_id_06196f80; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX filer_clipboarditem_file_id_06196f80 ON public.filer_clipboarditem USING btree (file_id);


--
-- Name: filer_file_folder_id_af803bbb; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX filer_file_folder_id_af803bbb ON public.filer_file USING btree (folder_id);


--
-- Name: filer_file_owner_id_b9e32671; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX filer_file_owner_id_b9e32671 ON public.filer_file USING btree (owner_id);


--
-- Name: filer_file_polymorphic_ctype_id_f44903c1; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX filer_file_polymorphic_ctype_id_f44903c1 ON public.filer_file USING btree (polymorphic_ctype_id);


--
-- Name: filer_folder_owner_id_be530fb4; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX filer_folder_owner_id_be530fb4 ON public.filer_folder USING btree (owner_id);


--
-- Name: filer_folder_parent_id_308aecda; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX filer_folder_parent_id_308aecda ON public.filer_folder USING btree (parent_id);


--
-- Name: filer_folder_tree_id_b016223c; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX filer_folder_tree_id_b016223c ON public.filer_folder USING btree (tree_id);


--
-- Name: filer_folder_tree_id_lft_088ce52b_idx; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX filer_folder_tree_id_lft_088ce52b_idx ON public.filer_folder USING btree (tree_id, lft);


--
-- Name: filer_folderpermission_folder_id_5d02f1da; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX filer_folderpermission_folder_id_5d02f1da ON public.filer_folderpermission USING btree (folder_id);


--
-- Name: filer_folderpermission_group_id_8901bafa; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX filer_folderpermission_group_id_8901bafa ON public.filer_folderpermission USING btree (group_id);


--
-- Name: filer_folderpermission_user_id_7673d4b6; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX filer_folderpermission_user_id_7673d4b6 ON public.filer_folderpermission USING btree (user_id);


--
-- Name: knowledge_center_audiovisual_created_by_id_a22d187e; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX knowledge_center_audiovisual_created_by_id_a22d187e ON public.knowledge_center_audiovisual USING btree (created_by_id);


--
-- Name: knowledge_center_audiovisual_sub_category_id_1f22b74f; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX knowledge_center_audiovisual_sub_category_id_1f22b74f ON public.knowledge_center_audiovisual USING btree (sub_category_id);


--
-- Name: knowledge_center_documentcategory_author_id_d1cab49a; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX knowledge_center_documentcategory_author_id_d1cab49a ON public.knowledge_center_documentcategory USING btree (author_id);


--
-- Name: knowledge_center_subdocumentcategory_author_id_3eb8d07a; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX knowledge_center_subdocumentcategory_author_id_3eb8d07a ON public.knowledge_center_subdocumentcategory USING btree (author_id);


--
-- Name: knowledge_center_subdocumentcategory_category_id_7d686471; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX knowledge_center_subdocumentcategory_category_id_7d686471 ON public.knowledge_center_subdocumentcategory USING btree (category_id);


--
-- Name: knowledge_center_textcenter_category_id_0cf559de; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX knowledge_center_textcenter_category_id_0cf559de ON public.knowledge_center_textcenter USING btree (category_id);


--
-- Name: knowledge_center_textcenter_created_by_id_d2cc9e1f; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX knowledge_center_textcenter_created_by_id_d2cc9e1f ON public.knowledge_center_textcenter USING btree (created_by_id);


--
-- Name: knowledge_center_textcenter_sub_category_id_746668d6; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX knowledge_center_textcenter_sub_category_id_746668d6 ON public.knowledge_center_textcenter USING btree (sub_category_id);


--
-- Name: knowledge_center_videocategory_author_id_fb81efaf; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX knowledge_center_videocategory_author_id_fb81efaf ON public.knowledge_center_videocategory USING btree (author_id);


--
-- Name: social_auth_code_code_a2393167; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX social_auth_code_code_a2393167 ON public.social_auth_code USING btree (code);


--
-- Name: social_auth_code_code_a2393167_like; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX social_auth_code_code_a2393167_like ON public.social_auth_code USING btree (code varchar_pattern_ops);


--
-- Name: social_auth_code_timestamp_176b341f; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX social_auth_code_timestamp_176b341f ON public.social_auth_code USING btree ("timestamp");


--
-- Name: social_auth_partial_timestamp_50f2119f; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX social_auth_partial_timestamp_50f2119f ON public.social_auth_partial USING btree ("timestamp");


--
-- Name: social_auth_partial_token_3017fea3; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX social_auth_partial_token_3017fea3 ON public.social_auth_partial USING btree (token);


--
-- Name: social_auth_partial_token_3017fea3_like; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX social_auth_partial_token_3017fea3_like ON public.social_auth_partial USING btree (token varchar_pattern_ops);


--
-- Name: social_auth_usersocialauth_user_id_17d28448; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX social_auth_usersocialauth_user_id_17d28448 ON public.social_auth_usersocialauth USING btree (user_id);


--
-- Name: venturelift_media_audiovisual_author_id_d8e68b7f; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX venturelift_media_audiovisual_author_id_d8e68b7f ON public.venturelift_media_audiovisual USING btree (author_id);


--
-- Name: venturelift_media_audiovisual_sub_category_id_5dc86450; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX venturelift_media_audiovisual_sub_category_id_5dc86450 ON public.venturelift_media_audiovisual USING btree (sub_category_id);


--
-- Name: venturelift_media_category_author_id_47781bdc; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX venturelift_media_category_author_id_47781bdc ON public.venturelift_media_category USING btree (author_id);


--
-- Name: venturelift_media_subscription_email_f0f94f19_like; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX venturelift_media_subscription_email_f0f94f19_like ON public.venturelift_media_subscription USING btree (email varchar_pattern_ops);


--
-- Name: venturelift_media_textmedia_author_id_a0928313; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX venturelift_media_textmedia_author_id_a0928313 ON public.venturelift_media_textmedia USING btree (author_id);


--
-- Name: venturelift_media_textmedia_category_id_07fb43c7; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX venturelift_media_textmedia_category_id_07fb43c7 ON public.venturelift_media_textmedia USING btree (category_id);


--
-- Name: venturelift_profiles_busin_approved_by_id_0a6a6a51; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX venturelift_profiles_busin_approved_by_id_0a6a6a51 ON public.venturelift_profiles_businessconnectrequest USING btree (approved_by_id);


--
-- Name: venturelift_profiles_busin_business_id_9898d099; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX venturelift_profiles_busin_business_id_9898d099 ON public.venturelift_profiles_businessconnectrequest USING btree (business_id);


--
-- Name: venturelift_profiles_busin_businessgoals_id_0a138c21; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX venturelift_profiles_busin_businessgoals_id_0a138c21 ON public.venturelift_profiles_businessgoals_primary_services_interes3068 USING btree (businessgoals_id);


--
-- Name: venturelift_profiles_busin_businessgoals_id_44253ab3; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX venturelift_profiles_busin_businessgoals_id_44253ab3 ON public.venturelift_profiles_businessgoals_secondary_services_inter2394 USING btree (businessgoals_id);


--
-- Name: venturelift_profiles_busin_company_name_id_70f3fee1; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX venturelift_profiles_busin_company_name_id_70f3fee1 ON public.venturelift_profiles_businessinvestment USING btree (company_name_id);


--
-- Name: venturelift_profiles_busin_investor_id_7f8752a0; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX venturelift_profiles_busin_investor_id_7f8752a0 ON public.venturelift_profiles_businessconnectrequest USING btree (investor_id);


--
-- Name: venturelift_profiles_busin_rejected_by_id_ae13c745; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX venturelift_profiles_busin_rejected_by_id_ae13c745 ON public.venturelift_profiles_businessconnectrequest USING btree (rejected_by_id);


--
-- Name: venturelift_profiles_busin_vlaservices_id_0669e571; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX venturelift_profiles_busin_vlaservices_id_0669e571 ON public.venturelift_profiles_businessgoals_primary_services_interes3068 USING btree (vlaservices_id);


--
-- Name: venturelift_profiles_busin_vlaservices_id_b746e89b; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX venturelift_profiles_busin_vlaservices_id_b746e89b ON public.venturelift_profiles_businessgoals_secondary_services_inter2394 USING btree (vlaservices_id);


--
-- Name: venturelift_profiles_business_creator_id_7d21075a; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX venturelift_profiles_business_creator_id_7d21075a ON public.venturelift_profiles_business USING btree (creator_id);


--
-- Name: venturelift_profiles_business_sector_id_aecf9d73; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX venturelift_profiles_business_sector_id_aecf9d73 ON public.venturelift_profiles_business USING btree (sector_id);


--
-- Name: venturelift_profiles_business_verified_by_id_3f32a396; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX venturelift_profiles_business_verified_by_id_3f32a396 ON public.venturelift_profiles_business USING btree (verified_by_id);


--
-- Name: venturelift_profiles_businesscategory_added_by_id_e3ca593a; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX venturelift_profiles_businesscategory_added_by_id_e3ca593a ON public.venturelift_profiles_businesscategory USING btree (added_by_id);


--
-- Name: venturelift_profiles_businessfinancial_company_name_id_82a944a0; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX venturelift_profiles_businessfinancial_company_name_id_82a944a0 ON public.venturelift_profiles_businessfinancial USING btree (company_name_id);


--
-- Name: venturelift_profiles_businessgoals_company_name_id_1c7932ed; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX venturelift_profiles_businessgoals_company_name_id_1c7932ed ON public.venturelift_profiles_businessgoals USING btree (company_name_id);


--
-- Name: venturelift_profiles_businessmodel_company_name_id_2f6b56cf; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX venturelift_profiles_businessmodel_company_name_id_2f6b56cf ON public.venturelift_profiles_businessmodel USING btree (company_name_id);


--
-- Name: venturelift_profiles_businessteam_company_name_id_ca7c36b2; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX venturelift_profiles_businessteam_company_name_id_ca7c36b2 ON public.venturelift_profiles_businessteam USING btree (company_name_id);


--
-- Name: venturelift_profiles_inves_approved_by_id_ce0db687; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX venturelift_profiles_inves_approved_by_id_ce0db687 ON public.venturelift_profiles_investorconnectrequest USING btree (approved_by_id);


--
-- Name: venturelift_profiles_inves_businesscategory_id_6a086800; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX venturelift_profiles_inves_businesscategory_id_6a086800 ON public.venturelift_profiles_investorprofile_target_sectors USING btree (businesscategory_id);


--
-- Name: venturelift_profiles_inves_investor_id_d3eb34a3; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX venturelift_profiles_inves_investor_id_d3eb34a3 ON public.venturelift_profiles_investorconnectrequest USING btree (investor_id);


--
-- Name: venturelift_profiles_inves_investor_profile_id_32a2d0b9; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX venturelift_profiles_inves_investor_profile_id_32a2d0b9 ON public.venturelift_profiles_investorprofile USING btree (investor_profile_id);


--
-- Name: venturelift_profiles_inves_investorprofile_id_19139c87; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX venturelift_profiles_inves_investorprofile_id_19139c87 ON public.venturelift_profiles_investorprofile_target_sectors USING btree (investorprofile_id);


--
-- Name: venturelift_profiles_inves_rejected_by_id_1a276e21; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX venturelift_profiles_inves_rejected_by_id_1a276e21 ON public.venturelift_profiles_investorconnectrequest USING btree (rejected_by_id);


--
-- Name: venturelift_profiles_inves_requestor_id_8677c9a8; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX venturelift_profiles_inves_requestor_id_8677c9a8 ON public.venturelift_profiles_investorconnectrequest USING btree (requestor_id);


--
-- Name: venturelift_profiles_investor_user_id_c24692a2; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX venturelift_profiles_investor_user_id_c24692a2 ON public.venturelift_profiles_investor USING btree (user_id);


--
-- Name: venturelift_profiles_investor_verified_by_id_c2a79076; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX venturelift_profiles_investor_verified_by_id_c2a79076 ON public.venturelift_profiles_investor USING btree (verified_by_id);


--
-- Name: venturelift_profiles_marketdescription_company_name_id_d569aad5; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX venturelift_profiles_marketdescription_company_name_id_d569aad5 ON public.venturelift_profiles_marketdescription USING btree (company_name_id);


--
-- Name: venturelift_profiles_post_company_id_0f6915b9; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX venturelift_profiles_post_company_id_0f6915b9 ON public.venturelift_profiles_post USING btree (company_id);


--
-- Name: venturelift_profiles_post_investor_author_id_977cc28d; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX venturelift_profiles_post_investor_author_id_977cc28d ON public.venturelift_profiles_post USING btree (investor_author_id);


--
-- Name: venturelift_profiles_post_likes_post_id_6ea8b7e4; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX venturelift_profiles_post_likes_post_id_6ea8b7e4 ON public.venturelift_profiles_post_likes USING btree (post_id);


--
-- Name: venturelift_profiles_post_likes_user_id_9fbdf3d1; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX venturelift_profiles_post_likes_user_id_9fbdf3d1 ON public.venturelift_profiles_post_likes USING btree (user_id);


--
-- Name: venturelift_profiles_post_supporter_author_id_b424558b; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX venturelift_profiles_post_supporter_author_id_b424558b ON public.venturelift_profiles_post USING btree (supporter_author_id);


--
-- Name: venturelift_profiles_suppo_approved_by_id_779c361d; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX venturelift_profiles_suppo_approved_by_id_779c361d ON public.venturelift_profiles_supporterconnectrequest USING btree (approved_by_id);


--
-- Name: venturelift_profiles_suppo_businesscategory_id_2950ab89; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX venturelift_profiles_suppo_businesscategory_id_2950ab89 ON public.venturelift_profiles_supporterprofile_interest_sectors USING btree (businesscategory_id);


--
-- Name: venturelift_profiles_suppo_rejected_by_id_5ebe6bb9; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX venturelift_profiles_suppo_rejected_by_id_5ebe6bb9 ON public.venturelift_profiles_supporterconnectrequest USING btree (rejected_by_id);


--
-- Name: venturelift_profiles_suppo_requestor_id_a9a86f83; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX venturelift_profiles_suppo_requestor_id_a9a86f83 ON public.venturelift_profiles_supporterconnectrequest USING btree (requestor_id);


--
-- Name: venturelift_profiles_suppo_supporter_id_40f51b0e; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX venturelift_profiles_suppo_supporter_id_40f51b0e ON public.venturelift_profiles_supporterconnectrequest USING btree (supporter_id);


--
-- Name: venturelift_profiles_suppo_supporter_profile_id_fccb6609; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX venturelift_profiles_suppo_supporter_profile_id_fccb6609 ON public.venturelift_profiles_supporterprofile USING btree (supporter_profile_id);


--
-- Name: venturelift_profiles_suppo_supporterprofile_id_3db1fd12; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX venturelift_profiles_suppo_supporterprofile_id_3db1fd12 ON public.venturelift_profiles_supporterprofile_interest_sectors USING btree (supporterprofile_id);


--
-- Name: venturelift_profiles_supporter_company_b00a72ee_like; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX venturelift_profiles_supporter_company_b00a72ee_like ON public.venturelift_profiles_supporter USING btree (company varchar_pattern_ops);


--
-- Name: venturelift_profiles_supporter_user_id_c182e9db; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX venturelift_profiles_supporter_user_id_c182e9db ON public.venturelift_profiles_supporter USING btree (user_id);


--
-- Name: venturelift_profiles_supporter_verified_by_id_d56b37ad; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX venturelift_profiles_supporter_verified_by_id_d56b37ad ON public.venturelift_profiles_supporter USING btree (verified_by_id);


--
-- Name: venturelift_profiles_surveyuser_user_id_bc62044a; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX venturelift_profiles_surveyuser_user_id_bc62044a ON public.venturelift_profiles_surveyuser USING btree (user_id);


--
-- Name: venturelift_profiles_trackinguser_user_details_id_fae2d530; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX venturelift_profiles_trackinguser_user_details_id_fae2d530 ON public.venturelift_profiles_trackinguser USING btree (user_details_id);


--
-- Name: venturelift_profiles_vlaservices_added_by_id_a4057c8d; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX venturelift_profiles_vlaservices_added_by_id_a4057c8d ON public.venturelift_profiles_vlaservices USING btree (added_by_id);


--
-- Name: videomembership_membership_slug_eeded31a; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX videomembership_membership_slug_eeded31a ON public.videomembership_membership USING btree (slug);


--
-- Name: videomembership_membership_slug_eeded31a_like; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX videomembership_membership_slug_eeded31a_like ON public.videomembership_membership USING btree (slug varchar_pattern_ops);


--
-- Name: videomembership_membership_type_membership_id_06aba963; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX videomembership_membership_type_membership_id_06aba963 ON public.videomembership_membership USING btree (type_membership_id);


--
-- Name: videomembership_subscription_user_membership_id_e2e926d0; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX videomembership_subscription_user_membership_id_e2e926d0 ON public.videomembership_subscription USING btree (user_membership_id);


--
-- Name: videomembership_usermembership_membership_id_004a9e6d; Type: INDEX; Schema: public; Owner: venture
--

CREATE INDEX videomembership_usermembership_membership_id_004a9e6d ON public.videomembership_usermembership USING btree (membership_id);


--
-- Name: actstream_action actstream_action_action_object_conten_ee623c15_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.actstream_action
    ADD CONSTRAINT actstream_action_action_object_conten_ee623c15_fk_django_co FOREIGN KEY (action_object_content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: actstream_action actstream_action_actor_content_type_i_d5e5ec2a_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.actstream_action
    ADD CONSTRAINT actstream_action_actor_content_type_i_d5e5ec2a_fk_django_co FOREIGN KEY (actor_content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: actstream_action actstream_action_target_content_type__187fa164_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.actstream_action
    ADD CONSTRAINT actstream_action_target_content_type__187fa164_fk_django_co FOREIGN KEY (target_content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: actstream_follow actstream_follow_content_type_id_ba287eb9_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.actstream_follow
    ADD CONSTRAINT actstream_follow_content_type_id_ba287eb9_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: actstream_follow actstream_follow_user_id_e9d4e1ff_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.actstream_follow
    ADD CONSTRAINT actstream_follow_user_id_e9d4e1ff_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_aliaspluginmodel cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a_fk_cms_place; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_aliaspluginmodel
    ADD CONSTRAINT cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a_fk_cms_place FOREIGN KEY (alias_placeholder_id) REFERENCES public.cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_aliaspluginmodel cms_aliaspluginmodel_cmsplugin_ptr_id_f71dfd31_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_aliaspluginmodel
    ADD CONSTRAINT cms_aliaspluginmodel_cmsplugin_ptr_id_f71dfd31_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_aliaspluginmodel cms_aliaspluginmodel_plugin_id_9867676e_fk_cms_cmsplugin_id; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_aliaspluginmodel
    ADD CONSTRAINT cms_aliaspluginmodel_plugin_id_9867676e_fk_cms_cmsplugin_id FOREIGN KEY (plugin_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_cmsplugin cms_cmsplugin_parent_id_fd3bd9dd_fk_cms_cmsplugin_id; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_cmsplugin
    ADD CONSTRAINT cms_cmsplugin_parent_id_fd3bd9dd_fk_cms_cmsplugin_id FOREIGN KEY (parent_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_cmsplugin cms_cmsplugin_placeholder_id_0bfa3b26_fk_cms_placeholder_id; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_cmsplugin
    ADD CONSTRAINT cms_cmsplugin_placeholder_id_0bfa3b26_fk_cms_placeholder_id FOREIGN KEY (placeholder_id) REFERENCES public.cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_globalpagepermission_sites cms_globalpagepermis_globalpagepermission_46bd2681_fk_cms_globa; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_globalpagepermission_sites
    ADD CONSTRAINT cms_globalpagepermis_globalpagepermission_46bd2681_fk_cms_globa FOREIGN KEY (globalpagepermission_id) REFERENCES public.cms_globalpagepermission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_globalpagepermission_sites cms_globalpagepermis_site_id_00460b53_fk_django_si; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_globalpagepermission_sites
    ADD CONSTRAINT cms_globalpagepermis_site_id_00460b53_fk_django_si FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_globalpagepermission cms_globalpagepermission_group_id_991b4733_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_globalpagepermission
    ADD CONSTRAINT cms_globalpagepermission_group_id_991b4733_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_globalpagepermission cms_globalpagepermission_user_id_a227cee1_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_globalpagepermission
    ADD CONSTRAINT cms_globalpagepermission_user_id_a227cee1_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_page cms_page_node_id_c87b85a9_fk_cms_treenode_id; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_page
    ADD CONSTRAINT cms_page_node_id_c87b85a9_fk_cms_treenode_id FOREIGN KEY (node_id) REFERENCES public.cms_treenode(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_page_placeholders cms_page_placeholder_placeholder_id_6b120886_fk_cms_place; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_page_placeholders
    ADD CONSTRAINT cms_page_placeholder_placeholder_id_6b120886_fk_cms_place FOREIGN KEY (placeholder_id) REFERENCES public.cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_page_placeholders cms_page_placeholders_page_id_f2ce8dec_fk_cms_page_id; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_page_placeholders
    ADD CONSTRAINT cms_page_placeholders_page_id_f2ce8dec_fk_cms_page_id FOREIGN KEY (page_id) REFERENCES public.cms_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_page cms_page_publisher_public_id_d619fca0_fk_cms_page_id; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_page
    ADD CONSTRAINT cms_page_publisher_public_id_d619fca0_fk_cms_page_id FOREIGN KEY (publisher_public_id) REFERENCES public.cms_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_pagepermission cms_pagepermission_group_id_af5af193_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_pagepermission
    ADD CONSTRAINT cms_pagepermission_group_id_af5af193_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_pagepermission cms_pagepermission_page_id_0ae9a163_fk_cms_page_id; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_pagepermission
    ADD CONSTRAINT cms_pagepermission_page_id_0ae9a163_fk_cms_page_id FOREIGN KEY (page_id) REFERENCES public.cms_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_pagepermission cms_pagepermission_user_id_0c7d2b3c_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_pagepermission
    ADD CONSTRAINT cms_pagepermission_user_id_0c7d2b3c_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_pageuser cms_pageuser_created_by_id_8e9fbf83_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_pageuser
    ADD CONSTRAINT cms_pageuser_created_by_id_8e9fbf83_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_pageuser cms_pageuser_user_ptr_id_b3d65592_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_pageuser
    ADD CONSTRAINT cms_pageuser_user_ptr_id_b3d65592_fk_auth_user_id FOREIGN KEY (user_ptr_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_pageusergroup cms_pageusergroup_created_by_id_7d57fa39_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_pageusergroup
    ADD CONSTRAINT cms_pageusergroup_created_by_id_7d57fa39_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_pageusergroup cms_pageusergroup_group_ptr_id_34578d93_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_pageusergroup
    ADD CONSTRAINT cms_pageusergroup_group_ptr_id_34578d93_fk_auth_group_id FOREIGN KEY (group_ptr_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_placeholderreference cms_placeholderrefer_cmsplugin_ptr_id_6977ec85_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_placeholderreference
    ADD CONSTRAINT cms_placeholderrefer_cmsplugin_ptr_id_6977ec85_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_placeholderreference cms_placeholderrefer_placeholder_ref_id_244759b1_fk_cms_place; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_placeholderreference
    ADD CONSTRAINT cms_placeholderrefer_placeholder_ref_id_244759b1_fk_cms_place FOREIGN KEY (placeholder_ref_id) REFERENCES public.cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_staticplaceholder cms_staticplaceholder_draft_id_5aee407b_fk_cms_placeholder_id; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_staticplaceholder
    ADD CONSTRAINT cms_staticplaceholder_draft_id_5aee407b_fk_cms_placeholder_id FOREIGN KEY (draft_id) REFERENCES public.cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_staticplaceholder cms_staticplaceholder_public_id_876aaa66_fk_cms_placeholder_id; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_staticplaceholder
    ADD CONSTRAINT cms_staticplaceholder_public_id_876aaa66_fk_cms_placeholder_id FOREIGN KEY (public_id) REFERENCES public.cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_staticplaceholder cms_staticplaceholder_site_id_dc6a85b6_fk_django_site_id; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_staticplaceholder
    ADD CONSTRAINT cms_staticplaceholder_site_id_dc6a85b6_fk_django_site_id FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_title cms_title_page_id_5fade2a3_fk_cms_page_id; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_title
    ADD CONSTRAINT cms_title_page_id_5fade2a3_fk_cms_page_id FOREIGN KEY (page_id) REFERENCES public.cms_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_title cms_title_publisher_public_id_003a2702_fk_cms_title_id; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_title
    ADD CONSTRAINT cms_title_publisher_public_id_003a2702_fk_cms_title_id FOREIGN KEY (publisher_public_id) REFERENCES public.cms_title(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_treenode cms_treenode_parent_id_59bb02c4_fk_cms_treenode_id; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_treenode
    ADD CONSTRAINT cms_treenode_parent_id_59bb02c4_fk_cms_treenode_id FOREIGN KEY (parent_id) REFERENCES public.cms_treenode(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_treenode cms_treenode_site_id_d3f46985_fk_django_site_id; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_treenode
    ADD CONSTRAINT cms_treenode_site_id_d3f46985_fk_django_site_id FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_usersettings cms_usersettings_clipboard_id_3ae17c19_fk_cms_placeholder_id; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_usersettings
    ADD CONSTRAINT cms_usersettings_clipboard_id_3ae17c19_fk_cms_placeholder_id FOREIGN KEY (clipboard_id) REFERENCES public.cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_usersettings cms_usersettings_user_id_09633b2d_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.cms_usersettings
    ADD CONSTRAINT cms_usersettings_user_id_09633b2d_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: crowdfunding_campaignsector crowdfunding_campaig_added_by_id_8acbabf7_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.crowdfunding_campaignsector
    ADD CONSTRAINT crowdfunding_campaig_added_by_id_8acbabf7_fk_auth_user FOREIGN KEY (added_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: crowdfunding_campaignconfiguration crowdfunding_campaig_added_by_id_ee2814ca_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.crowdfunding_campaignconfiguration
    ADD CONSTRAINT crowdfunding_campaig_added_by_id_ee2814ca_fk_auth_user FOREIGN KEY (added_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: crowdfunding_campaigndisbursement crowdfunding_campaig_approved_by_id_60455bb0_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.crowdfunding_campaigndisbursement
    ADD CONSTRAINT crowdfunding_campaig_approved_by_id_60455bb0_fk_auth_user FOREIGN KEY (approved_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: crowdfunding_campaigndisbursement crowdfunding_campaig_campaign_id_23226380_fk_crowdfund; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.crowdfunding_campaigndisbursement
    ADD CONSTRAINT crowdfunding_campaig_campaign_id_23226380_fk_crowdfund FOREIGN KEY (campaign_id) REFERENCES public.crowdfunding_campaign(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: crowdfunding_campaignreward crowdfunding_campaig_campaign_id_810a81e4_fk_crowdfund; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.crowdfunding_campaignreward
    ADD CONSTRAINT crowdfunding_campaig_campaign_id_810a81e4_fk_crowdfund FOREIGN KEY (campaign_id) REFERENCES public.crowdfunding_campaign(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: crowdfunding_campaignpayment crowdfunding_campaig_campaign_id_c17c4f16_fk_crowdfund; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.crowdfunding_campaignpayment
    ADD CONSTRAINT crowdfunding_campaig_campaign_id_c17c4f16_fk_crowdfund FOREIGN KEY (campaign_id) REFERENCES public.crowdfunding_campaign(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: crowdfunding_campaign crowdfunding_campaig_campaign_owner_id_2d209f6a_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.crowdfunding_campaign
    ADD CONSTRAINT crowdfunding_campaig_campaign_owner_id_2d209f6a_fk_auth_user FOREIGN KEY (campaign_owner_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: crowdfunding_campaignpayment crowdfunding_campaig_donator_id_a1c694d7_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.crowdfunding_campaignpayment
    ADD CONSTRAINT crowdfunding_campaig_donator_id_a1c694d7_fk_auth_user FOREIGN KEY (donator_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: crowdfunding_campaignreward crowdfunding_campaig_payment_id_14737afe_fk_crowdfund; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.crowdfunding_campaignreward
    ADD CONSTRAINT crowdfunding_campaig_payment_id_14737afe_fk_crowdfund FOREIGN KEY (payment_id) REFERENCES public.crowdfunding_campaignpayment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: crowdfunding_campaigndisbursement crowdfunding_campaig_recipient_id_5bbbd355_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.crowdfunding_campaigndisbursement
    ADD CONSTRAINT crowdfunding_campaig_recipient_id_5bbbd355_fk_auth_user FOREIGN KEY (recipient_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: crowdfunding_campaigndisbursement crowdfunding_campaig_rejected_by_id_dd997b4d_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.crowdfunding_campaigndisbursement
    ADD CONSTRAINT crowdfunding_campaig_rejected_by_id_dd997b4d_fk_auth_user FOREIGN KEY (rejected_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: crowdfunding_campaignreward crowdfunding_campaig_rewarded_user_id_377bd886_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.crowdfunding_campaignreward
    ADD CONSTRAINT crowdfunding_campaig_rewarded_user_id_377bd886_fk_auth_user FOREIGN KEY (rewarded_user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: crowdfunding_campaign crowdfunding_campaig_sector_id_6ac143a0_fk_crowdfund; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.crowdfunding_campaign
    ADD CONSTRAINT crowdfunding_campaig_sector_id_6ac143a0_fk_crowdfund FOREIGN KEY (sector_id) REFERENCES public.crowdfunding_campaignsector(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: crowdfunding_campaign crowdfunding_campaign_approved_by_id_db142525_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.crowdfunding_campaign
    ADD CONSTRAINT crowdfunding_campaign_approved_by_id_db142525_fk_auth_user_id FOREIGN KEY (approved_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: crowdfunding_campaign crowdfunding_campaign_rejected_by_id_a23dc344_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.crowdfunding_campaign
    ADD CONSTRAINT crowdfunding_campaign_rejected_by_id_a23dc344_fk_auth_user_id FOREIGN KEY (rejected_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: crowdfunding_mpesac2bnotification crowdfunding_mpesac2_payment_id_d1973bb2_fk_crowdfund; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.crowdfunding_mpesac2bnotification
    ADD CONSTRAINT crowdfunding_mpesac2_payment_id_d1973bb2_fk_crowdfund FOREIGN KEY (payment_id) REFERENCES public.crowdfunding_campaignpayment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: crowdfunding_mpesastkpush crowdfunding_mpesast_payment_id_f25339a0_fk_crowdfund; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.crowdfunding_mpesastkpush
    ADD CONSTRAINT crowdfunding_mpesast_payment_id_f25339a0_fk_crowdfund FOREIGN KEY (payment_id) REFERENCES public.crowdfunding_campaignpayment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_column_column djangocms_column_col_cmsplugin_ptr_id_e7ab9661_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.djangocms_column_column
    ADD CONSTRAINT djangocms_column_col_cmsplugin_ptr_id_e7ab9661_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_column_multicolumns djangocms_column_mul_cmsplugin_ptr_id_aa54884e_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.djangocms_column_multicolumns
    ADD CONSTRAINT djangocms_column_mul_cmsplugin_ptr_id_aa54884e_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_file_file djangocms_file_file_cmsplugin_ptr_id_428f5041_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.djangocms_file_file
    ADD CONSTRAINT djangocms_file_file_cmsplugin_ptr_id_428f5041_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_file_file djangocms_file_file_file_src_id_74ac14a5_fk_filer_file_id; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.djangocms_file_file
    ADD CONSTRAINT djangocms_file_file_file_src_id_74ac14a5_fk_filer_file_id FOREIGN KEY (file_src_id) REFERENCES public.filer_file(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_file_folder djangocms_file_folde_cmsplugin_ptr_id_b258b166_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.djangocms_file_folder
    ADD CONSTRAINT djangocms_file_folde_cmsplugin_ptr_id_b258b166_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_file_folder djangocms_file_folder_folder_src_id_9558406a_fk_filer_folder_id; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.djangocms_file_folder
    ADD CONSTRAINT djangocms_file_folder_folder_src_id_9558406a_fk_filer_folder_id FOREIGN KEY (folder_src_id) REFERENCES public.filer_folder(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_googlemap_googlemapmarker djangocms_googlemap__cmsplugin_ptr_id_bdd9e018_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.djangocms_googlemap_googlemapmarker
    ADD CONSTRAINT djangocms_googlemap__cmsplugin_ptr_id_bdd9e018_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_googlemap_googlemap djangocms_googlemap__cmsplugin_ptr_id_c8493888_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.djangocms_googlemap_googlemap
    ADD CONSTRAINT djangocms_googlemap__cmsplugin_ptr_id_c8493888_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_googlemap_googlemaproute djangocms_googlemap__cmsplugin_ptr_id_f6a135c6_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.djangocms_googlemap_googlemaproute
    ADD CONSTRAINT djangocms_googlemap__cmsplugin_ptr_id_f6a135c6_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_googlemap_googlemapmarker djangocms_googlemap__icon_id_3b103213_fk_filer_ima; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.djangocms_googlemap_googlemapmarker
    ADD CONSTRAINT djangocms_googlemap__icon_id_3b103213_fk_filer_ima FOREIGN KEY (icon_id) REFERENCES public.filer_image(file_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_link_link djangocms_link_link_cmsplugin_ptr_id_10f7b2f2_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.djangocms_link_link
    ADD CONSTRAINT djangocms_link_link_cmsplugin_ptr_id_10f7b2f2_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_link_link djangocms_link_link_internal_link_id_41549c8e_fk_cms_page_id; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.djangocms_link_link
    ADD CONSTRAINT djangocms_link_link_internal_link_id_41549c8e_fk_cms_page_id FOREIGN KEY (internal_link_id) REFERENCES public.cms_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_picture_picture djangocms_picture_pi_cmsplugin_ptr_id_0e797309_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.djangocms_picture_picture
    ADD CONSTRAINT djangocms_picture_pi_cmsplugin_ptr_id_0e797309_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_picture_picture djangocms_picture_pi_picture_id_f7d6711b_fk_filer_ima; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.djangocms_picture_picture
    ADD CONSTRAINT djangocms_picture_pi_picture_id_f7d6711b_fk_filer_ima FOREIGN KEY (picture_id) REFERENCES public.filer_image(file_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_picture_picture djangocms_picture_pi_thumbnail_options_id_59cf80d1_fk_filer_thu; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.djangocms_picture_picture
    ADD CONSTRAINT djangocms_picture_pi_thumbnail_options_id_59cf80d1_fk_filer_thu FOREIGN KEY (thumbnail_options_id) REFERENCES public.filer_thumbnailoption(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_picture_picture djangocms_picture_picture_link_page_id_dbec9beb_fk_cms_page_id; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.djangocms_picture_picture
    ADD CONSTRAINT djangocms_picture_picture_link_page_id_dbec9beb_fk_cms_page_id FOREIGN KEY (link_page_id) REFERENCES public.cms_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_snippet_snippetptr djangocms_snippet_sn_cmsplugin_ptr_id_4cf9435f_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.djangocms_snippet_snippetptr
    ADD CONSTRAINT djangocms_snippet_sn_cmsplugin_ptr_id_4cf9435f_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_snippet_snippetptr djangocms_snippet_sn_snippet_id_56b99614_fk_djangocms; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.djangocms_snippet_snippetptr
    ADD CONSTRAINT djangocms_snippet_sn_snippet_id_56b99614_fk_djangocms FOREIGN KEY (snippet_id) REFERENCES public.djangocms_snippet_snippet(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_style_style djangocms_style_styl_cmsplugin_ptr_id_820d9b8f_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.djangocms_style_style
    ADD CONSTRAINT djangocms_style_styl_cmsplugin_ptr_id_820d9b8f_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_text_ckeditor_text djangocms_text_ckedi_cmsplugin_ptr_id_946882c1_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.djangocms_text_ckeditor_text
    ADD CONSTRAINT djangocms_text_ckedi_cmsplugin_ptr_id_946882c1_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_video_videoplayer djangocms_video_vide_cmsplugin_ptr_id_0367e96e_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.djangocms_video_videoplayer
    ADD CONSTRAINT djangocms_video_vide_cmsplugin_ptr_id_0367e96e_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_video_videosource djangocms_video_vide_cmsplugin_ptr_id_474cebf9_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.djangocms_video_videosource
    ADD CONSTRAINT djangocms_video_vide_cmsplugin_ptr_id_474cebf9_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_video_videotrack djangocms_video_vide_cmsplugin_ptr_id_edcbdf6c_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.djangocms_video_videotrack
    ADD CONSTRAINT djangocms_video_vide_cmsplugin_ptr_id_edcbdf6c_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_video_videoplayer djangocms_video_vide_poster_id_07790e24_fk_filer_ima; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.djangocms_video_videoplayer
    ADD CONSTRAINT djangocms_video_vide_poster_id_07790e24_fk_filer_ima FOREIGN KEY (poster_id) REFERENCES public.filer_image(file_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_video_videosource djangocms_video_vide_source_file_id_16f11167_fk_filer_fil; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.djangocms_video_videosource
    ADD CONSTRAINT djangocms_video_vide_source_file_id_16f11167_fk_filer_fil FOREIGN KEY (source_file_id) REFERENCES public.filer_file(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_video_videotrack djangocms_video_videotrack_src_id_e5a015d8_fk_filer_file_id; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.djangocms_video_videotrack
    ADD CONSTRAINT djangocms_video_videotrack_src_id_e5a015d8_fk_filer_file_id FOREIGN KEY (src_id) REFERENCES public.filer_file(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: easy_thumbnails_thumbnail easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.easy_thumbnails_thumbnail
    ADD CONSTRAINT easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum FOREIGN KEY (source_id) REFERENCES public.easy_thumbnails_source(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: easy_thumbnails_thumbnaildimensions easy_thumbnails_thum_thumbnail_id_c3a0c549_fk_easy_thum; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions
    ADD CONSTRAINT easy_thumbnails_thum_thumbnail_id_c3a0c549_fk_easy_thum FOREIGN KEY (thumbnail_id) REFERENCES public.easy_thumbnails_thumbnail(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: events_attendees events_attendees_attendee_id_df12dae2_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.events_attendees
    ADD CONSTRAINT events_attendees_attendee_id_df12dae2_fk_auth_user_id FOREIGN KEY (attendee_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: events_attendees events_attendees_event_id_ec59ef41_fk_events_events_id; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.events_attendees
    ADD CONSTRAINT events_attendees_event_id_ec59ef41_fk_events_events_id FOREIGN KEY (event_id) REFERENCES public.events_events(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: events_eventcategory events_eventcategory_author_id_e2003454_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.events_eventcategory
    ADD CONSTRAINT events_eventcategory_author_id_e2003454_fk_auth_user_id FOREIGN KEY (author_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: events_events events_events_author_id_c32fa65a_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.events_events
    ADD CONSTRAINT events_events_author_id_c32fa65a_fk_auth_user_id FOREIGN KEY (author_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: events_events events_events_category_id_cc0e3607_fk_events_eventcategory_id; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.events_events
    ADD CONSTRAINT events_events_category_id_cc0e3607_fk_events_eventcategory_id FOREIGN KEY (category_id) REFERENCES public.events_eventcategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: events_networkevents events_networkevents_author_id_2d24c1d5_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.events_networkevents
    ADD CONSTRAINT events_networkevents_author_id_2d24c1d5_fk_auth_user_id FOREIGN KEY (author_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: events_networkevents events_networkevents_category_id_046b16df_fk_events_ev; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.events_networkevents
    ADD CONSTRAINT events_networkevents_category_id_046b16df_fk_events_ev FOREIGN KEY (category_id) REFERENCES public.events_eventcategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: filer_clipboard filer_clipboard_user_id_b52ff0bc_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.filer_clipboard
    ADD CONSTRAINT filer_clipboard_user_id_b52ff0bc_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: filer_clipboarditem filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.filer_clipboarditem
    ADD CONSTRAINT filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id FOREIGN KEY (clipboard_id) REFERENCES public.filer_clipboard(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: filer_clipboarditem filer_clipboarditem_file_id_06196f80_fk_filer_file_id; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.filer_clipboarditem
    ADD CONSTRAINT filer_clipboarditem_file_id_06196f80_fk_filer_file_id FOREIGN KEY (file_id) REFERENCES public.filer_file(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: filer_file filer_file_folder_id_af803bbb_fk_filer_folder_id; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.filer_file
    ADD CONSTRAINT filer_file_folder_id_af803bbb_fk_filer_folder_id FOREIGN KEY (folder_id) REFERENCES public.filer_folder(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: filer_file filer_file_owner_id_b9e32671_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.filer_file
    ADD CONSTRAINT filer_file_owner_id_b9e32671_fk_auth_user_id FOREIGN KEY (owner_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: filer_file filer_file_polymorphic_ctype_id_f44903c1_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.filer_file
    ADD CONSTRAINT filer_file_polymorphic_ctype_id_f44903c1_fk_django_co FOREIGN KEY (polymorphic_ctype_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: filer_folder filer_folder_owner_id_be530fb4_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.filer_folder
    ADD CONSTRAINT filer_folder_owner_id_be530fb4_fk_auth_user_id FOREIGN KEY (owner_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: filer_folder filer_folder_parent_id_308aecda_fk_filer_folder_id; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.filer_folder
    ADD CONSTRAINT filer_folder_parent_id_308aecda_fk_filer_folder_id FOREIGN KEY (parent_id) REFERENCES public.filer_folder(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: filer_folderpermission filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id FOREIGN KEY (folder_id) REFERENCES public.filer_folder(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: filer_folderpermission filer_folderpermission_group_id_8901bafa_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_group_id_8901bafa_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: filer_folderpermission filer_folderpermission_user_id_7673d4b6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_user_id_7673d4b6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: filer_image filer_image_file_ptr_id_3e21d4f0_fk_filer_file_id; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.filer_image
    ADD CONSTRAINT filer_image_file_ptr_id_3e21d4f0_fk_filer_file_id FOREIGN KEY (file_ptr_id) REFERENCES public.filer_file(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: knowledge_center_audiovisual knowledge_center_aud_created_by_id_a22d187e_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.knowledge_center_audiovisual
    ADD CONSTRAINT knowledge_center_aud_created_by_id_a22d187e_fk_auth_user FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: knowledge_center_audiovisual knowledge_center_aud_sub_category_id_1f22b74f_fk_knowledge; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.knowledge_center_audiovisual
    ADD CONSTRAINT knowledge_center_aud_sub_category_id_1f22b74f_fk_knowledge FOREIGN KEY (sub_category_id) REFERENCES public.knowledge_center_videocategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: knowledge_center_documentcategory knowledge_center_doc_author_id_d1cab49a_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.knowledge_center_documentcategory
    ADD CONSTRAINT knowledge_center_doc_author_id_d1cab49a_fk_auth_user FOREIGN KEY (author_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: knowledge_center_subdocumentcategory knowledge_center_sub_author_id_3eb8d07a_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.knowledge_center_subdocumentcategory
    ADD CONSTRAINT knowledge_center_sub_author_id_3eb8d07a_fk_auth_user FOREIGN KEY (author_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: knowledge_center_subdocumentcategory knowledge_center_sub_category_id_7d686471_fk_knowledge; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.knowledge_center_subdocumentcategory
    ADD CONSTRAINT knowledge_center_sub_category_id_7d686471_fk_knowledge FOREIGN KEY (category_id) REFERENCES public.knowledge_center_documentcategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: knowledge_center_textcenter knowledge_center_tex_category_id_0cf559de_fk_knowledge; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.knowledge_center_textcenter
    ADD CONSTRAINT knowledge_center_tex_category_id_0cf559de_fk_knowledge FOREIGN KEY (category_id) REFERENCES public.knowledge_center_documentcategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: knowledge_center_textcenter knowledge_center_tex_created_by_id_d2cc9e1f_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.knowledge_center_textcenter
    ADD CONSTRAINT knowledge_center_tex_created_by_id_d2cc9e1f_fk_auth_user FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: knowledge_center_textcenter knowledge_center_tex_sub_category_id_746668d6_fk_knowledge; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.knowledge_center_textcenter
    ADD CONSTRAINT knowledge_center_tex_sub_category_id_746668d6_fk_knowledge FOREIGN KEY (sub_category_id) REFERENCES public.knowledge_center_subdocumentcategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: knowledge_center_videocategory knowledge_center_vid_author_id_fb81efaf_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.knowledge_center_videocategory
    ADD CONSTRAINT knowledge_center_vid_author_id_fb81efaf_fk_auth_user FOREIGN KEY (author_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: social_auth_usersocialauth social_auth_usersocialauth_user_id_17d28448_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.social_auth_usersocialauth
    ADD CONSTRAINT social_auth_usersocialauth_user_id_17d28448_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: venturelift_media_audiovisual venturelift_media_au_author_id_d8e68b7f_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_media_audiovisual
    ADD CONSTRAINT venturelift_media_au_author_id_d8e68b7f_fk_auth_user FOREIGN KEY (author_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: venturelift_media_audiovisual venturelift_media_au_sub_category_id_5dc86450_fk_ventureli; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_media_audiovisual
    ADD CONSTRAINT venturelift_media_au_sub_category_id_5dc86450_fk_ventureli FOREIGN KEY (sub_category_id) REFERENCES public.venturelift_media_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: venturelift_media_category venturelift_media_category_author_id_47781bdc_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_media_category
    ADD CONSTRAINT venturelift_media_category_author_id_47781bdc_fk_auth_user_id FOREIGN KEY (author_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: venturelift_media_textmedia venturelift_media_te_category_id_07fb43c7_fk_ventureli; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_media_textmedia
    ADD CONSTRAINT venturelift_media_te_category_id_07fb43c7_fk_ventureli FOREIGN KEY (category_id) REFERENCES public.venturelift_media_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: venturelift_media_textmedia venturelift_media_textmedia_author_id_a0928313_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_media_textmedia
    ADD CONSTRAINT venturelift_media_textmedia_author_id_a0928313_fk_auth_user_id FOREIGN KEY (author_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: venturelift_profiles_vlaservices venturelift_profiles_added_by_id_a4057c8d_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_vlaservices
    ADD CONSTRAINT venturelift_profiles_added_by_id_a4057c8d_fk_auth_user FOREIGN KEY (added_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: venturelift_profiles_businesscategory venturelift_profiles_added_by_id_e3ca593a_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_businesscategory
    ADD CONSTRAINT venturelift_profiles_added_by_id_e3ca593a_fk_auth_user FOREIGN KEY (added_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: venturelift_profiles_businessconnectrequest venturelift_profiles_approved_by_id_0a6a6a51_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_businessconnectrequest
    ADD CONSTRAINT venturelift_profiles_approved_by_id_0a6a6a51_fk_auth_user FOREIGN KEY (approved_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: venturelift_profiles_supporterconnectrequest venturelift_profiles_approved_by_id_779c361d_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_supporterconnectrequest
    ADD CONSTRAINT venturelift_profiles_approved_by_id_779c361d_fk_auth_user FOREIGN KEY (approved_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: venturelift_profiles_investorconnectrequest venturelift_profiles_approved_by_id_ce0db687_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_investorconnectrequest
    ADD CONSTRAINT venturelift_profiles_approved_by_id_ce0db687_fk_auth_user FOREIGN KEY (approved_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: venturelift_profiles_businessconnectrequest venturelift_profiles_business_id_9898d099_fk_ventureli; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_businessconnectrequest
    ADD CONSTRAINT venturelift_profiles_business_id_9898d099_fk_ventureli FOREIGN KEY (business_id) REFERENCES public.venturelift_profiles_business(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: venturelift_profiles_supporterprofile_interest_sectors venturelift_profiles_businesscategory_id_2950ab89_fk_ventureli; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_supporterprofile_interest_sectors
    ADD CONSTRAINT venturelift_profiles_businesscategory_id_2950ab89_fk_ventureli FOREIGN KEY (businesscategory_id) REFERENCES public.venturelift_profiles_businesscategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: venturelift_profiles_investorprofile_target_sectors venturelift_profiles_businesscategory_id_6a086800_fk_ventureli; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_investorprofile_target_sectors
    ADD CONSTRAINT venturelift_profiles_businesscategory_id_6a086800_fk_ventureli FOREIGN KEY (businesscategory_id) REFERENCES public.venturelift_profiles_businesscategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: venturelift_profiles_businessgoals_primary_services_interes3068 venturelift_profiles_businessgoals_id_0a138c21_fk_ventureli; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_businessgoals_primary_services_interes3068
    ADD CONSTRAINT venturelift_profiles_businessgoals_id_0a138c21_fk_ventureli FOREIGN KEY (businessgoals_id) REFERENCES public.venturelift_profiles_businessgoals(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: venturelift_profiles_businessgoals_secondary_services_inter2394 venturelift_profiles_businessgoals_id_44253ab3_fk_ventureli; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_businessgoals_secondary_services_inter2394
    ADD CONSTRAINT venturelift_profiles_businessgoals_id_44253ab3_fk_ventureli FOREIGN KEY (businessgoals_id) REFERENCES public.venturelift_profiles_businessgoals(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: venturelift_profiles_post venturelift_profiles_company_id_0f6915b9_fk_ventureli; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_post
    ADD CONSTRAINT venturelift_profiles_company_id_0f6915b9_fk_ventureli FOREIGN KEY (company_id) REFERENCES public.venturelift_profiles_business(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: venturelift_profiles_businessgoals venturelift_profiles_company_name_id_1c7932ed_fk_ventureli; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_businessgoals
    ADD CONSTRAINT venturelift_profiles_company_name_id_1c7932ed_fk_ventureli FOREIGN KEY (company_name_id) REFERENCES public.venturelift_profiles_business(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: venturelift_profiles_businessmodel venturelift_profiles_company_name_id_2f6b56cf_fk_ventureli; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_businessmodel
    ADD CONSTRAINT venturelift_profiles_company_name_id_2f6b56cf_fk_ventureli FOREIGN KEY (company_name_id) REFERENCES public.venturelift_profiles_business(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: venturelift_profiles_businessinvestment venturelift_profiles_company_name_id_70f3fee1_fk_ventureli; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_businessinvestment
    ADD CONSTRAINT venturelift_profiles_company_name_id_70f3fee1_fk_ventureli FOREIGN KEY (company_name_id) REFERENCES public.venturelift_profiles_business(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: venturelift_profiles_businessfinancial venturelift_profiles_company_name_id_82a944a0_fk_ventureli; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_businessfinancial
    ADD CONSTRAINT venturelift_profiles_company_name_id_82a944a0_fk_ventureli FOREIGN KEY (company_name_id) REFERENCES public.venturelift_profiles_business(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: venturelift_profiles_businessteam venturelift_profiles_company_name_id_ca7c36b2_fk_ventureli; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_businessteam
    ADD CONSTRAINT venturelift_profiles_company_name_id_ca7c36b2_fk_ventureli FOREIGN KEY (company_name_id) REFERENCES public.venturelift_profiles_business(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: venturelift_profiles_marketdescription venturelift_profiles_company_name_id_d569aad5_fk_ventureli; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_marketdescription
    ADD CONSTRAINT venturelift_profiles_company_name_id_d569aad5_fk_ventureli FOREIGN KEY (company_name_id) REFERENCES public.venturelift_profiles_business(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: venturelift_profiles_business venturelift_profiles_creator_id_7d21075a_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_business
    ADD CONSTRAINT venturelift_profiles_creator_id_7d21075a_fk_auth_user FOREIGN KEY (creator_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: venturelift_profiles_post venturelift_profiles_investor_author_id_977cc28d_fk_ventureli; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_post
    ADD CONSTRAINT venturelift_profiles_investor_author_id_977cc28d_fk_ventureli FOREIGN KEY (investor_author_id) REFERENCES public.venturelift_profiles_investor(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: venturelift_profiles_businessconnectrequest venturelift_profiles_investor_id_7f8752a0_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_businessconnectrequest
    ADD CONSTRAINT venturelift_profiles_investor_id_7f8752a0_fk_auth_user FOREIGN KEY (investor_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: venturelift_profiles_investorconnectrequest venturelift_profiles_investor_id_d3eb34a3_fk_ventureli; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_investorconnectrequest
    ADD CONSTRAINT venturelift_profiles_investor_id_d3eb34a3_fk_ventureli FOREIGN KEY (investor_id) REFERENCES public.venturelift_profiles_investor(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: venturelift_profiles_investorprofile venturelift_profiles_investor_profile_id_32a2d0b9_fk_ventureli; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_investorprofile
    ADD CONSTRAINT venturelift_profiles_investor_profile_id_32a2d0b9_fk_ventureli FOREIGN KEY (investor_profile_id) REFERENCES public.venturelift_profiles_investor(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: venturelift_profiles_investor venturelift_profiles_investor_user_id_c24692a2_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_investor
    ADD CONSTRAINT venturelift_profiles_investor_user_id_c24692a2_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: venturelift_profiles_investorprofile_target_sectors venturelift_profiles_investorprofile_id_19139c87_fk_ventureli; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_investorprofile_target_sectors
    ADD CONSTRAINT venturelift_profiles_investorprofile_id_19139c87_fk_ventureli FOREIGN KEY (investorprofile_id) REFERENCES public.venturelift_profiles_investorprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: venturelift_profiles_post_likes venturelift_profiles_post_id_6ea8b7e4_fk_ventureli; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_post_likes
    ADD CONSTRAINT venturelift_profiles_post_id_6ea8b7e4_fk_ventureli FOREIGN KEY (post_id) REFERENCES public.venturelift_profiles_post(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: venturelift_profiles_investorconnectrequest venturelift_profiles_rejected_by_id_1a276e21_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_investorconnectrequest
    ADD CONSTRAINT venturelift_profiles_rejected_by_id_1a276e21_fk_auth_user FOREIGN KEY (rejected_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: venturelift_profiles_supporterconnectrequest venturelift_profiles_rejected_by_id_5ebe6bb9_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_supporterconnectrequest
    ADD CONSTRAINT venturelift_profiles_rejected_by_id_5ebe6bb9_fk_auth_user FOREIGN KEY (rejected_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: venturelift_profiles_businessconnectrequest venturelift_profiles_rejected_by_id_ae13c745_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_businessconnectrequest
    ADD CONSTRAINT venturelift_profiles_rejected_by_id_ae13c745_fk_auth_user FOREIGN KEY (rejected_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: venturelift_profiles_investorconnectrequest venturelift_profiles_requestor_id_8677c9a8_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_investorconnectrequest
    ADD CONSTRAINT venturelift_profiles_requestor_id_8677c9a8_fk_auth_user FOREIGN KEY (requestor_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: venturelift_profiles_supporterconnectrequest venturelift_profiles_requestor_id_a9a86f83_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_supporterconnectrequest
    ADD CONSTRAINT venturelift_profiles_requestor_id_a9a86f83_fk_auth_user FOREIGN KEY (requestor_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: venturelift_profiles_business venturelift_profiles_sector_id_aecf9d73_fk_ventureli; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_business
    ADD CONSTRAINT venturelift_profiles_sector_id_aecf9d73_fk_ventureli FOREIGN KEY (sector_id) REFERENCES public.venturelift_profiles_businesscategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: venturelift_profiles_post venturelift_profiles_supporter_author_id_b424558b_fk_ventureli; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_post
    ADD CONSTRAINT venturelift_profiles_supporter_author_id_b424558b_fk_ventureli FOREIGN KEY (supporter_author_id) REFERENCES public.venturelift_profiles_supporter(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: venturelift_profiles_supporterconnectrequest venturelift_profiles_supporter_id_40f51b0e_fk_ventureli; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_supporterconnectrequest
    ADD CONSTRAINT venturelift_profiles_supporter_id_40f51b0e_fk_ventureli FOREIGN KEY (supporter_id) REFERENCES public.venturelift_profiles_supporter(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: venturelift_profiles_supporterprofile venturelift_profiles_supporter_profile_id_fccb6609_fk_ventureli; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_supporterprofile
    ADD CONSTRAINT venturelift_profiles_supporter_profile_id_fccb6609_fk_ventureli FOREIGN KEY (supporter_profile_id) REFERENCES public.venturelift_profiles_supporter(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: venturelift_profiles_supporter venturelift_profiles_supporter_user_id_c182e9db_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_supporter
    ADD CONSTRAINT venturelift_profiles_supporter_user_id_c182e9db_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: venturelift_profiles_supporterprofile_interest_sectors venturelift_profiles_supporterprofile_id_3db1fd12_fk_ventureli; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_supporterprofile_interest_sectors
    ADD CONSTRAINT venturelift_profiles_supporterprofile_id_3db1fd12_fk_ventureli FOREIGN KEY (supporterprofile_id) REFERENCES public.venturelift_profiles_supporterprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: venturelift_profiles_trackinguser venturelift_profiles_user_details_id_fae2d530_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_trackinguser
    ADD CONSTRAINT venturelift_profiles_user_details_id_fae2d530_fk_auth_user FOREIGN KEY (user_details_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: venturelift_profiles_post_likes venturelift_profiles_user_id_9fbdf3d1_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_post_likes
    ADD CONSTRAINT venturelift_profiles_user_id_9fbdf3d1_fk_auth_user FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: venturelift_profiles_surveyuser venturelift_profiles_user_id_bc62044a_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_surveyuser
    ADD CONSTRAINT venturelift_profiles_user_id_bc62044a_fk_auth_user FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: venturelift_profiles_business venturelift_profiles_verified_by_id_3f32a396_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_business
    ADD CONSTRAINT venturelift_profiles_verified_by_id_3f32a396_fk_auth_user FOREIGN KEY (verified_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: venturelift_profiles_investor venturelift_profiles_verified_by_id_c2a79076_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_investor
    ADD CONSTRAINT venturelift_profiles_verified_by_id_c2a79076_fk_auth_user FOREIGN KEY (verified_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: venturelift_profiles_supporter venturelift_profiles_verified_by_id_d56b37ad_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_supporter
    ADD CONSTRAINT venturelift_profiles_verified_by_id_d56b37ad_fk_auth_user FOREIGN KEY (verified_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: venturelift_profiles_businessgoals_primary_services_interes3068 venturelift_profiles_vlaservices_id_0669e571_fk_ventureli; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_businessgoals_primary_services_interes3068
    ADD CONSTRAINT venturelift_profiles_vlaservices_id_0669e571_fk_ventureli FOREIGN KEY (vlaservices_id) REFERENCES public.venturelift_profiles_vlaservices(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: venturelift_profiles_businessgoals_secondary_services_inter2394 venturelift_profiles_vlaservices_id_b746e89b_fk_ventureli; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.venturelift_profiles_businessgoals_secondary_services_inter2394
    ADD CONSTRAINT venturelift_profiles_vlaservices_id_b746e89b_fk_ventureli FOREIGN KEY (vlaservices_id) REFERENCES public.venturelift_profiles_vlaservices(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: videomembership_membership videomembership_memb_type_membership_id_06aba963_fk_videomemb; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.videomembership_membership
    ADD CONSTRAINT videomembership_memb_type_membership_id_06aba963_fk_videomemb FOREIGN KEY (type_membership_id) REFERENCES public.videomembership_membershiptype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: videomembership_subscription videomembership_subs_user_membership_id_e2e926d0_fk_videomemb; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.videomembership_subscription
    ADD CONSTRAINT videomembership_subs_user_membership_id_e2e926d0_fk_videomemb FOREIGN KEY (user_membership_id) REFERENCES public.videomembership_usermembership(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: videomembership_usermembership videomembership_user_membership_id_004a9e6d_fk_videomemb; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.videomembership_usermembership
    ADD CONSTRAINT videomembership_user_membership_id_004a9e6d_fk_videomemb FOREIGN KEY (membership_id) REFERENCES public.videomembership_membership(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: videomembership_usermembership videomembership_usermembership_user_id_19266257_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: venture
--

ALTER TABLE ONLY public.videomembership_usermembership
    ADD CONSTRAINT videomembership_usermembership_user_id_19266257_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

